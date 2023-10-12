# How to Use the Key Authentication Plugin

- [How to Use the Key Authentication Plugin](#how-to-use-the-key-authentication-plugin)
  - [What is the Key Authentication?](#what-is-the-key-authentication)
  - [Watch the video on how to use the Key Authentication plugin](#watch-the-video-on-how-to-use-the-key-authentication-plugin)
  - [Installation using Deck](#installation-using-deck)
  - [Installation using Admin API](#installation-using-admin-api)
  - [Installation using KIC](#installation-using-kic)

## What is the Key Authentication?

**Key authentication:** also known as API key authentication or token-based authentication, involves using a unique API key or token to authenticate and authorize access to an API. When a client sends a request to an API, they include their API key in the request (typically via a header). When it comes to Key Authentication and using it at the Gateway, the API gateway then validates the key and grants access if it's valid.

## Watch the video on how to use the Key Authentication plugin

<!--
[![First [PLUGIN NAME]](./images/activate.png)](https://youtu.be/ "First [PLUGIN NAME]")
-->

## Installation using Deck

To install this using deck:

1. Navigate to this directory
2. Make sure you have deck [installed](https://docs.konghq.com/deck/latest/installation/)
3. Make sure your konnect token is set `export KONG_TOKEN=kpat_abcdedf....................yz`
4. Make sure you can connect: `deck ping --konnect-token $KONNECT_TOKEN` should return a successful response `Successfully Konnected to the Kong organization!`
5. Run deck sync: `deck sync --konnect-token $KONNECT_TOKEN --select-tag key-auth-example`

## Installation using Admin API

You can leverage the insomnia repository [here](https://github.com/irishtek-solutions/kong-konnect-inso) for Admin API usage.

## Installation using KIC

