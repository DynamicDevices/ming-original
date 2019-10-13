# MING (Mosquitto, InfluxDB, NodeRed, Grafana)

MING is a containerised IoT sensor server stack in the traditions of LAMP.

We've leveraged #OpenBalena to provide a embedded Linux environment to provide:

- Mosquitto MQtt broker listening on port 1883 for MQtt message publications

- InfluxDB listening on port 8086 providing a time series database for sensor data storage

- NodeRed listening on port 1880 to provide an easy to use graphical environment for parsing,
  analysing, storing, and forwarding sensor data messages

  We've also installed the NodeRed InfluxDB nodes by default so you easily store and retrieve
  data locally.

- Grafana listening on port 80 providing a data visualisation environment for sensor data.

Each of these applications is built and runs in its own container on an
embedded Linux target supporting Balena.io (Docker for Embedded Systems).

# Supported Targets

Currently tested targets are

- Intel NUC (which can be used for testing in a VirtualBox VM)

- Raspberry Pi 3 B+

- Raspberry Pi Zero may work [TBD]

# Getting going

Clone this repository and follow getting started instructions at Balena.io

Either start with a Raspberry Pi 3B+, [here](https://www.balena.io/os/docs/raspberrypi3/getting-started)

Or you might choose so test with a VirtualBox VM, [here](https://www.balena.io/blog/no-hardware-use-virtualbox)

Add the remote from the Balena.io dashboard to this repo and do a git push.

Balena.io will build and deploy the containers to your target.

It's that easy!

# More detail

Here's an example of what you will see on the Balena dashboard.

You can see the individual containers running, the unique ID (UID) of the newly registered device,
and it's local IP address. You can also enable a public URL to access the device remotely. By default
if you enable access to port 80 you'll enable access to the Grafana server.

![](https://i.ibb.co/jvxDcNr/Screenshot-from-2019-10-13-18-46-32.png)

You can see from the above that the short form of the UID for this device is e844144.

You can change this but for now if you attempt to ping that UID you should have connectivity

`$ ping e844144.local`

If you run into problems just try pinging to the local IP address you see on the dashboard 

`$ ping 192.168.0.228`

With connectivity working you can now take a look at the servers running on the target.

- NodeRed http://e844144.local:1880
- Grafana http://e844144.local:80 (default password: admin, admin)
- You can also publish to Mosquitto using MQtt on the default port 1883

# Maintainer / Contributors

- Alex J Lennon (@embedded_iot)
- Julian Todd (@goatchurch)
- Matthew Croughan (@matthewcroughan)

# Contributing

Please raise issues and generate PRs at

https://github.com/DynamicDevices/ming


