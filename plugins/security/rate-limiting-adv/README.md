# How to Use the Rate Limiting Advanced Plugin

- [How to Use the Rate Limiting Advanced Plugin](#how-to-use-the-rate-limiting-advanced-plugin)
  - [What is the Rate Limiting Advanced?](#what-is-the-rate-limiting-advanced)
  - [Watch the video on how to use the Rate Limiting Advanced plugin](#watch-the-video-on-how-to-use-the-rate-limiting-advanced-plugin)
  - [Installation using Deck](#installation-using-deck)
  - [Installation using Admin API](#installation-using-admin-api)
  - [Installation using KIC](#installation-using-kic)

## What is the Rate Limiting Advanced?

**Rate Limiting Advanced** in Kong goes beyond basic rate limiting by allowing for more complex policies and rate limiting based on various factors such as HTTP headers, query parameters, or user roles.It enables conditional rate limiting, which means different clients or requests can have different rate limits based on their characteristics.

## Watch the video on how to use the Rate Limiting Advanced plugin

<!--
[![First [PLUGIN NAME]](./images/activate.png)](https://youtu.be/ "First [PLUGIN NAME]")
-->

## Installation using Deck

To install this using deck:

1. Navigate to this directory
2. Make sure you have deck [installed](https://docs.konghq.com/deck/latest/installation/)
3. Make sure your konnect token is set `export KONG_TOKEN=kpat_abcdedf....................yz`
4. Make sure you can connect: `deck ping --konnect-token $KONNECT_TOKEN` should return a successful response `Successfully Konnected to the Kong organization!`
5. Run deck sync: `deck sync --konnect-token $KONNECT_TOKEN --select-tag rate-limiting-adv-example`

## Installation using Admin API

You can leverage the insomnia repository [here](https://github.com/irishtek-solutions/kong-konnect-inso) for Admin API usage.

## Installation using KIC

