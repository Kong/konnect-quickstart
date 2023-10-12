# How to Use the IP Restriction Plugin

- [How to Use the IP Restriction Plugin](#how-to-use-the-ip-restriction-plugin)
  - [What is the IP Restriction?](#what-is-the-ip-restriction)
  - [Watch the video on how to use the IP Restriction plugin](#watch-the-video-on-how-to-use-the-ip-restriction-plugin)
  - [Installation using Deck](#installation-using-deck)
  - [Installation using Admin API](#installation-using-admin-api)
  - [Installation using KIC](#installation-using-kic)

## What is the IP Restriction?

**IP Restriction:** allows businesses to control which IP addresses or ranges are allowed or denied access to the API. It can be used to whitelist trusted IPs or blacklist malicious IPs.

## Watch the video on how to use the IP Restriction plugin

<!--
[![First [PLUGIN NAME]](./images/activate.png)](https://youtu.be/ "First [PLUGIN NAME]")
-->

## Installation using Deck

To install this using deck:

1. Navigate to this directory
2. Make sure you have deck [installed](https://docs.konghq.com/deck/latest/installation/)
3. Make sure your konnect token is set `export KONG_TOKEN=kpat_abcdedf....................yz`
4. Make sure you can connect: `deck ping --konnect-token $KONNECT_TOKEN` should return a successful response `Successfully Konnected to the Kong organization!`
5. Run deck sync: `deck sync --konnect-token $KONNECT_TOKEN --select-tag ip-restriction-example`

## Installation using Admin API

You can leverage the insomnia repository [here](https://github.com/irishtek-solutions/kong-konnect-inso) for Admin API usage.

## Installation using KIC

