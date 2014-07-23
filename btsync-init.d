#!/bin/bash
# /etc/init.d/btsync

### BEGIN INIT INFO
# Provides:  btsync
# Required-Start: $local_fs
# Required-Stop:  $local_fs
# Should-Start:   $network
# Default-Start:  2 3 4 5
# Default-Stop:   0 1 6
# Short-Description:    btsync server
# Description:    Starts the Bittorrent Sync service
### END INIT INFO

#Settings
COMMAND="/home/xander/.btsync/btsync --config /home/xander/.btsync/config.conf"
USER="xander"

ME=`whoami`

if [ "$ME" == "$USER" ] ; then
  bash -c "$COMMAND"
else
  su - $USER -c "$COMMAND"
fi

exit 0
