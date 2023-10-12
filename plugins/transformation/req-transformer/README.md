# How to use the Request Transformer Plugin

- [How to use the Request Transformer Plugin](#how-to-use-the-request-transformer-plugin)
  - [What is the Request Transformer?](#what-is-the-request-transformer)
  - [Watch the video on how to use the Request Transformer plugin](#watch-the-video-on-how-to-use-the-request-transformer-plugin)
  - [Installation using Deck](#installation-using-deck)
  - [Installation using Admin API](#installation-using-admin-api)
  - [Installation using KIC](#installation-using-kic)

## What is the Request Transformer?

**Request Transformer:** Transforming a request involves modifying the content or structure of incoming requests before they are forwarded to backend services. This can include request payload conversion, header modification, or URL rewriting.

## Watch the video on how to use the Request Transformer plugin

<!--
[![First [PLUGIN NAME]](./images/activate.png)](https://youtu.be/ "First [PLUGIN NAME]")
-->

## Installation using Deck

To install this using deck:

1. Navigate to this directory
2. Make sure you have deck [installed](https://docs.konghq.com/deck/latest/installation/)
3. Make sure your konnect token is set `export KONG_TOKEN=kpat_abcdedf....................yz`
4. Make sure you can connect: `deck ping --konnect-token $KONNECT_TOKEN` should return a successful response `Successfully Konnected to the Kong organization!`
5. Run deck sync: `deck sync --konnect-token $KONNECT_TOKEN --select-tag request-transformer-example`

## Installation using Admin API

You can leverage the insomnia repository [here](https://github.com/irishtek-solutions/kong-konnect-inso) for Admin API usage.

## Installation using KIC

