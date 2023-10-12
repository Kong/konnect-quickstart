# How to Use the Rate Limiting Plugin

- [How to Use the Rate Limiting Plugin](#how-to-use-the-rate-limiting-plugin)
  - [What is the Rate Limiting?](#what-is-the-rate-limiting)
  - [Watch the video on how to use the Rate Limiting plugin](#watch-the-video-on-how-to-use-the-rate-limiting-plugin)
  - [Installation using Deck](#installation-using-deck)
  - [Installation using Admin API](#installation-using-admin-api)
  - [Installation using KIC](#installation-using-kic)

## What is the Rate Limiting?

**Rate Limiting:** allows businesses to control the number of requests a client or application can make to an API within a specified time frame (e.g., requests per second or requests per minute). When a client exceeds the defined rate limit, the API gateway can respond with an response code as well as additional information. Rate Limiting ensures fair usage of the API's resources.

## Watch the video on how to use the Rate Limiting plugin

<!--
[![First [PLUGIN NAME]](./images/activate.png)](https://youtu.be/ "First [PLUGIN NAME]")
-->

## Installation using Deck

To install this using deck:

1. Navigate to this directory
2. Make sure you have deck [installed](https://docs.konghq.com/deck/latest/installation/)
3. Make sure your konnect token is set `export KONG_TOKEN=kpat_abcdedf....................yz`
4. Make sure you can connect: `deck ping --konnect-token $KONNECT_TOKEN` should return a successful response `Successfully Konnected to the Kong organization!`
5. Run deck sync: `deck sync --konnect-token $KONNECT_TOKEN --select-tag rate-limiting-example`

## Installation using Admin API

You can leverage the insomnia repository [here](https://github.com/irishtek-solutions/kong-konnect-inso) for Admin API usage.

## Installation using KIC
