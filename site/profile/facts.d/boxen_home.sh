#/bin/bash
CURRENT_USER=`/bin/ls -l /dev/console | /usr/bin/awk '{ print $3 }'`
echo "boxen_home=/Users/${CURRENT_USER}/Dropbox/Config/boxen_home"