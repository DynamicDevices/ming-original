#!/bin/bash

export DBUS_SYSTEM_BUS_ADDRESS=unix:path=/host/run/dbus/system_bus_socket

# If MING_AP is set and equal to 1 then create an access point.
# Otherwise echo the fact that it has not been set to the console.

# We should endeavour to make this do-able from the captive portal 

if [[ "$MING_AP" == 1 ]]; then
  ./wifi-connect -s MING -u /usr/src/app/ui
else
while true
do
  echo "Wifi AP has not been enabled in service variables set WIFI_AP=1 to enable"
  sleep 120
done 
fi
