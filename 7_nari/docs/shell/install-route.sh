#!/bin/sh

# -----------------------------------------------------
# chMAC LanchDaemons Install scripts 
#
# Descriptions:
#    1. Move the .plist file to /Library/LaunchDaemons
#    2. Move the .sh file to /usr/local/bin
#    3. Correct permissions
#
# History:
#    2015-04-15 Tony Liu, tonyliu2ca@yahoo.com
#
# Disclaimer:
#    This is free and open source software.
#    It is provided AS IS without warranty of any kind.
# -----------------------------------------------------

cd `dirname $0`

scriptFile="chmac.sh"
plistFile="local.chmac.plist"

logger -i "ldInstall: Start to install..."
mkdir -p /usr/local/bin
cp ".$scriptFile" /usr/local/bin/$scriptFile &>/dev/null
cp ".$plistFile" /Library/LaunchDaemons/$plistFile &>/dev/null
chmod 755 /usr/local/bin/$scriptFile &>/dev/null
chmod 644 /Library/LaunchDaemons/$plistFile &>/dev/null
chown root:wheel /usr/local/bin/$scriptFile /Library/LaunchDaemons/$plistFile &>/dev/null
logger -i "ldInstall: Done."

exit 0