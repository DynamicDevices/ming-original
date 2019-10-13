# MING (Mosquitto, InfluxDB, NodeRed, Grafana)

MING is a containerised IoT sensor server stack in the traditions of LAMP.

We've leveraged #OpenBalena to provide a embedded Linux environment to provide:

- Mosquitto MQtt broker listening on port 1883 for MQtt message publications

- InfluxDB listening on port 8086 providing a time series database for sensor data storage

- NodeRed listening on port 1880 to provide an easy to use graphical environment for parsing,
  analysing, storing, and forwarding sensor data messages

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

# Maintainer / Contributors

Alex J Lennon - @embedded_iot
Julian Todd - @goatchurch
Matthew Croughan - @matthewcroughan

# Contributing

Please raise issues and generate PRs at

https://github.com/DynamicDevices/ming


