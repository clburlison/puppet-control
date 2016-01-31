#!/bin/bash

/usr/local/bin/dockutil --remove all --no-restart
/usr/local/bin/dockutil --add '/Applications/Google Chrome.app' --no-restart
/usr/local/bin/dockutil --add '/Applications/2Do.app' --no-restart
/usr/local/bin/dockutil --add '/Applications/1Password 6.app' --no-restart
/usr/local/bin/dockutil --add '/Applications/Mail.app' --no-restart
/usr/local/bin/dockutil --add '/Applications/Calendar.app' --no-restart
/usr/local/bin/dockutil --add '/Applications/Spotify.app' --no-restart
/usr/local/bin/dockutil --add '/Applications/Messages.app' --no-restart
/usr/local/bin/dockutil --add '/Applications/Utilities/Terminal.app' --no-restart
/usr/local/bin/dockutil --add '/Applications/TextMate.app' --no-restart
/usr/local/bin/dockutil --add '/Applications/Slack.app' --no-restart
/usr/local/bin/dockutil --add '/Applications/Remote Desktop.app' --no-restart
/usr/local/bin/dockutil --add '/Applications/VMware Fusion.app' --no-restart
/usr/local/bin/dockutil --add '/Applications/Tower.app' --no-restart
/usr/local/bin/dockutil --add '/Applications/MunkiAdmin.app' --no-restart
/usr/local/bin/dockutil --add '/Applications/Trello X.app' --no-restart
/usr/local/bin/dockutil --add '/Applications/Managed Software Center.app' --no-restart
/usr/local/bin/dockutil --add '/Applications/System Preferences.app' --no-restart

/usr/local/bin/dockutil --add '~/Dropbox/Config/User/Applications/munki_repo.command' --no-restart
/usr/local/bin/dockutil --add '/Applications/' --view list --display folder --sort name --no-restart
/usr/local/bin/dockutil --add '~/Documents' --view grid --display folder --sort name --no-restart
/usr/local/bin/dockutil --add '~/Downloads' --view fan --display folder --sort dateadded
