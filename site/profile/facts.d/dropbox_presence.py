#!/usr/bin/env python
"""Check the current console users Home directory for 
Dropbox directory."""

import os
import subprocess

def get_console_user():
    """Returns the currently logged-in user as
    a string, even if running as EUID root."""
    if os.geteuid() == 0:
        console_user = subprocess.check_output(['/usr/bin/stat',
                                                '-f%Su',
                                                '/dev/console']).strip()
    else:
        import getpass
        console_user = getpass.getuser()
    return console_user

def dropbox_presence():
    """Checks for the current console users Dropbox folder. 
    If it is present return True else False"""
    dir = "/Users/" + get_console_user() + "/Dropbox"
    if not os.path.exists(dir):
        return False
    else:
        return True

print "dropbox_presence="+str(dropbox_presence())