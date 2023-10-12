# How to Use the [INSERT PLUGIN] Plugin

- [What is [INSERT PLUGIN]](#what-is-the-[INSERT PLUGIN]) \n
- [Watch the video on how to use the [INSERT PLUGIN] plugin](#watch-the-video-on-how-to-use-the-[INSERT PLUGIN]-plugin) \
- [Installation using Deck](Installation-using-Deck) \n
- [Installation using Admin API](Installation-using-Admin-API) \n
- [Installation using KIC](Installation-using-KIC) \n

## What is the [INSERT PLUGIN]?

## Watch the video on how to use the [INSERT PLUGIN] plugin

<!--
[![First [PLUGIN NAME]](./images/activate.png)](https://youtu.be/ "First [PLUGIN NAME]")
-->

## Installation using Deck

To install this using deck:

1. Navigate to this directory
2. Make sure you have deck [installed](https://docs.konghq.com/deck/latest/installation/)
3. Make sure your konnect token is set `export KONG_TOKEN=kpat_abcdedf....................yz`
4. Make sure you can connect: `deck ping --konnect-token $KONNECT_TOKEN` should return a successful response `Successfully Konnected to the Kong organization!`
5. Run deck sync: `deck sync --konnect-token $KONNECT_TOKEN --select-tag **-example`

## Installation using Admin API

You can leverage the insomnia repository [here](https://github.com/irishtek-solutions/kong-konnect-inso)

## Installation using KIC

