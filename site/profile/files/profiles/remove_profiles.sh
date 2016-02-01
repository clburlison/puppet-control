#!/bin/sh

sidebarid=`/usr/bin/profiles -L -v | /usr/bin/grep -o 'com.apple.sidebarlists' | /usr/bin/head -1`

/usr/bin/profiles -R -p $sidebarid

finderid=`/usr/bin/profiles -L -v | /usr/bin/grep -o 'com.apple.finder' | /usr/bin/head -1`

/usr/bin/profiles -R -p $finderid

loginwindowid=`/usr/bin/profiles -L -v | /usr/bin/grep -o 'managedmac.loginwindow.alacarte' | /usr/bin/head -1`

/usr/bin/profiles -R -p $loginwindowid

securityid=`/usr/bin/profiles -L -v | /usr/bin/grep -o 'managedmac.security.alacarte' | /usr/bin/head -1`

/usr/bin/profiles -R -p $securityid

old_bisd_secureid=`/usr/bin/profiles -L -v | /usr/bin/grep -o 'com.apple.mdm.011-ctemac2.bisd.k12.2d3da6b0-f6e6-0130-a545-002500eedaae.alacarte' | /usr/bin/head -1`

/usr/bin/profiles -R -p $old_bisd_secureid

DisableReopenWindowsid=`/usr/bin/profiles -L -v | /usr/bin/grep -o 'DisableReopenWindows' | /usr/bin/head -1`

/usr/bin/profiles -R -p $DisableReopenWindowsid

sidebarlistsid=`/usr/bin/profiles -L -v | /usr/bin/grep -o 'com.apple.sidebarlists' | /usr/bin/head -1`

/usr/bin/profiles -R -p $sidebarlistsid