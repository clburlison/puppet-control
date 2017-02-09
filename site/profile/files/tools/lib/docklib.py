'''Routines for manipulating the Dock
Orginal author: Greg Neagle
https://gist.github.com/gregneagle/5c422d709c93615341a21009f800222e

Modications by: Clayton Burlison
Last update: Feb. 09, 2017
Added features:
  * `finally` block on Dock.save() so the Dock doesn't go into a unsupported
    state if the script fails
  * Added `url` other type for http, smb, afp, etc. connections
  * Added `label_type` to findExistingLabel() for searching URL connections
'''

import os
import subprocess

from Foundation import NSURL
from Foundation import CFPreferencesAppSynchronize
from Foundation import CFPreferencesCopyAppValue
from Foundation import CFPreferencesSetAppValue


class DockError(Exception):
    '''Basic exception'''
    pass


class Dock():
    '''Class to handle Dock operations'''
    _DOMAIN = 'com.apple.dock'
    _DOCK_PLIST = os.path.expanduser(
        '~/Library/Preferences/com.apple.dock.plist')
    _DOCK_LAUNCHAGENT_ID = 'com.apple.Dock.agent'
    _DOCK_LAUNCHAGENT_FILE = (
        '/System/Library/LaunchAgents/com.apple.Dock.plist')
    _SECTIONS = ['persistent-apps', 'persistent-others']
    items = {}

    def __init__(self):
        for key in self._SECTIONS:
            try:
                section = CFPreferencesCopyAppValue(key, self._DOMAIN)
                self.items[key] = section.mutableCopy()
            except Exception:
                raise

    def save(self):
        '''saves our (modified) Dock preferences'''
        # unload Dock launchd job so we can make our changes unmolested
        subprocess.call(
            ['/bin/launchctl', 'unload', self._DOCK_LAUNCHAGENT_FILE])

        # in case an error does occur handle this with a try/finally statement
        try:
            for key in self._SECTIONS:
                try:
                    CFPreferencesSetAppValue(key,
                                             self.items[key],
                                             self._DOMAIN)
                except Exception:
                    raise DockError
            if not CFPreferencesAppSynchronize(self._DOMAIN):
                raise DockError
        finally:
            # restart the Dock
            subprocess.call(['/bin/launchctl',
                             'load',
                             self._DOCK_LAUNCHAGENT_FILE])
            subprocess.call(['/bin/launchctl',
                             'start',
                             self._DOCK_LAUNCHAGENT_ID])

    def findExistingLabel(self, test_label, section='persistent-apps',
                          label_type='file-label'):
        '''returns index of item with label matching test_label
            or -1 if not found'''
        for index in range(len(self.items[section])):
            if (self.items[section][index]['tile-data'].get(label_type) ==
                    test_label):
                return index
        return -1

    def removeDockEntry(self, label, section=None):
        '''Removes a Dock entry with matching label, if any'''
        if section:
            sections = [section]
        else:
            sections = self._SECTIONS
        for section in sections:
            found_index = self.findExistingLabel(label, section=section)
            if found_index > -1:
                del self.items[section][found_index]

    def replaceDockEntry(self, thePath, label=None, section='persistent-apps'):
        '''Replaces a Dock entry. If label is None, then a label is derived
            from the item path. The new entry replaces an entry with the given
            or derived label'''
        if section == 'persistent-apps':
            new_item = self.makeDockAppEntry(thePath)
        else:
            new_item = self.makeDockOtherEntry(thePath)
        if new_item:
            if not label:
                label = os.path.splitext(os.path.basename(thePath))[0]
            found_index = self.findExistingLabel(label, section=section)
            if found_index > -1:
                self.items[section][found_index] = new_item

    def makeDockAppEntry(self, thePath):
        '''returns a dictionary corresponding to a Dock application item'''
        label_name = os.path.splitext(os.path.basename(thePath))[0]
        ns_url = NSURL.fileURLWithPath_(thePath).absoluteString()
        return {'tile-data': {'file-data': {'_CFURLString': ns_url,
                                            '_CFURLStringType': 15},
                              'file-label': label_name,
                              'file-type': 41},
                'tile-type': 'file-tile'}

    def makeDockOtherEntry(self, thePath,
                           arrangement=0, displayas=1, showas=0):
        '''returns a dictionary corresponding to a Dock folder or file item'''
        # arrangement values:
        #     1: sort by name
        #     2: sort by date added
        #     3: sort by modification date
        #     4: sort by creation date
        #     5: sort by kind
        #
        # displayas values:
        #     0: display as stack
        #     1: display as folder
        #
        # showas values:
        #     0: auto
        #     1: fan
        #     2: grid
        #     3: list

        # replace all tilda references with the expanded path for NSURL
        thePath = os.path.expanduser(thePath)

        label_name = os.path.splitext(os.path.basename(thePath))[0]

        if arrangement == 0:
            if label_name == 'Downloads':
                # set to sort by date added
                arrangement = 2
            else:
                # set to sort by name
                arrangement = 1
        ns_url = NSURL.fileURLWithPath_(thePath).absoluteString()
        if os.path.isdir(thePath):
            return {'tile-data': {'arrangement': arrangement,
                                  'displayas': displayas,
                                  'file-data': {'_CFURLString': ns_url,
                                                '_CFURLStringType': 15},
                                  'file-label': label_name,
                                  'dock-extra': False,
                                  'showas': showas
                                  },
                    'tile-type': 'directory-tile'}
        elif thePath.lower().startswith(('afp', 'smb', 'http', 'https')):
            return {'tile-data': {'url': {'_CFURLString': thePath,
                                          '_CFURLStringType': 15},
                                  'label': label_name,
                                  'dock-extra': False},
                    'tile-type': 'url-tile'}
        else:
            return {'tile-data': {'file-data': {'_CFURLString': ns_url,
                                                '_CFURLStringType': 15},
                                  'file-label': label_name,
                                  'dock-extra': False},
                    'tile-type': 'file-tile'}
