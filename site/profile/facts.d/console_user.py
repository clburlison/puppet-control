#!/usr/bin/env python
"""Get current console user and print facter 
fact to standard out"""

# import os
# import subprocess
#
# def get_console_user():
#     """Returns the currently logged-in user as
#     a string, even if running as EUID root."""
#     if os.geteuid() == 0:
#         console_user = subprocess.check_output(['/usr/bin/stat',
#                                                 '-f%Su',
#                                                 '/dev/console']).strip()
#     else:
#         import getpass
#         console_user = getpass.getuser()
#     return console_user

from SystemConfiguration import SCDynamicStoreCopyConsoleUser
username = (SCDynamicStoreCopyConsoleUser(None, None, None) or [None])[0]
username = [username,""][username in [u"loginwindow", None, u""]]

print "console_user="+username