# How to Use the Basic Authentication Plugin

[What is Basic Authentication](#what-is-the-Basic-Authentication)
[Watch the video on how to use the Basic Authentication plugin](#watch-the-video-on-how-to-use-the-Basic-Authentication-plugin) \
[Installation using Deck](Installation-using-Deck) \n
[Installation using Admin API](Installation-using-Admin-API) \n
[Installation using KIC](Installation-using-KIC) \n

## What is Basic Authentication?

**Basic Authentication:** Basic authentication is a method where clients send a username and password in the request (usually in a header(s)) to authenticate with an API. The credentials are typically Base64-encoded.

## Watch the video on how to use the Basic Authentication plugin

<!--
[![First [PLUGIN NAME]](./images/activate.png)](https://youtu.be/ "First [PLUGIN NAME]")
-->

## Installation using Deck

To install this using deck:

1. Navigate to this directory
2. Make sure you have deck [installed](https://docs.konghq.com/deck/latest/installation/)
3. Make sure your konnect token is set `export KONG_TOKEN=kpat_abcdedf....................yz`
4. Make sure you can connect: `deck ping --konnect-token $KONNECT_TOKEN` should return a successful response `Successfully Konnected to the Kong organization!`
5. Run deck sync: `deck sync --konnect-token $KONNECT_TOKEN --select-tag basic-auth-example`

## Installation using Admin API

You can leverage the insomnia repository [here](https://github.com/irishtek-solutions/kong-konnect-inso)

## Installation using KIC