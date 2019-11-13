#!/bin/bash

export DBUS_SYSTEM_BUS_ADDRESS=unix:path=/host/run/dbus/system_bus_socket
MING_AP=0

# If MING_AP is set and equal to 1 then create an access point.
# Otherwise echo the fact that it has not been set to the console.

# We should endeavour to make this do-able from the captive portal 

if [[ "$MING_AP" == 1 ]]; then
  ./wifi-connect -s MING -u /usr/src/app/ui
elif [[ "$MING_AP" == 0 ]]
then
  echo "Wifi AP has not been enabled in service variables"
fi
