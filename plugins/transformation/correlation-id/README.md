# How to use the Correlation ID Plugin

- [How to use the Correlation ID Plugin](#how-to-use-the-correlation-id-plugin)
  - [What is the Correlation ID?](#what-is-the-correlation-id)
  - [Watch the video on how to use the Correlation ID plugin](#watch-the-video-on-how-to-use-the-correlation-id-plugin)
  - [Installation using Deck](#installation-using-deck)
  - [Installation using Admin API](#installation-using-admin-api)
  - [Installation using KIC](#installation-using-kic)

## What is the Correlation ID?

**Correlation ID:** Adding a correlation ID to API requests involves including a unique identifier with each incoming request. This ID is then passed through the each networking component and downstream services to trace and correlate requests and responses. An example of a UUID would be this: 550e8400-e29b-41d4-a716-446655440000

## Watch the video on how to use the Correlation ID plugin

<!--
[![First [PLUGIN NAME]](./images/activate.png)](https://youtu.be/ "First [PLUGIN NAME]")
-->

## Installation using Deck

To install this using deck:

1. Navigate to this directory
2. Make sure you have deck [installed](https://docs.konghq.com/deck/latest/installation/)
3. Make sure your konnect token is set `export KONG_TOKEN=kpat_abcdedf....................yz`
4. Make sure you can connect: `deck ping --konnect-token $KONNECT_TOKEN` should return a successful response `Successfully Konnected to the Kong organization!`
5. Run deck sync: `deck sync --konnect-token $KONNECT_TOKEN --select-tag correlation-id-example`

## Installation using Admin API

You can leverage the insomnia repository [here](https://github.com/irishtek-solutions/kong-konnect-inso) for Admin API usage.

## Installation using KIC

