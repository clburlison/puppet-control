#!/usr/bin/python
"""Clayton Burlison's custom Dock"""

import sys
sys.path.append('/Library/tools/lib/')
import docklib

# dock object for storing/retrieving data
dock = docklib.Dock()

# storage objects. use an empty list to have a clean state.
persistent_apps, persistent_others = [], []
# persistent_apps = dock.items['persistent-apps']
# persistent_others = dock.items['persistent-others']

# my preferred apps
APPS = ['/Applications/Google Chrome.app',
        '/Applications/Safari.app',
        '/Applications/2Do.app',
        '/Applications/1Password 6.app',
        '/Applications/Mail.app',
        '/Applications/Calendar.app',
        '/Applications/Spotify.app',
        '/Applications/Messages.app',
        '/Applications/Utilities/Terminal.app',
        '/Applications/TextMate.app',
        '/Applications/Atom.app',
        '/Applications/Slack.app',
        '/Applications/Remote Desktop.app',
        '/Applications/VMware Fusion.app',
        '/Applications/Tower.app',
        '/Applications/MunkiAdmin.app',
        '/Applications/Managed Software Center.app',
        '/Applications/System Preferences.app'
        ]

# set preferred apps
for app in APPS:
    app_entry = dock.makeDockAppEntry(app)
    persistent_apps.append(app_entry)
dock.items['persistent-apps'] = persistent_apps

# set preferred others. manual as I like each having a special view
repo = dock.makeDockOtherEntry('~/bin/mount_munki_repo.command')
app_folder = dock.makeDockOtherEntry('/Applications/', 1, 1, 3)
doc_folder = dock.makeDockOtherEntry('~/Documents', 1, 1, 2)
downloads_folder = dock.makeDockOtherEntry('~/Downloads', 2, 1, 1)
persistent_others.extend([repo, app_folder, doc_folder, downloads_folder])
dock.items['persistent-others'] = persistent_others

# save the custom dock
dock.save()
