# How to use the File Logging Plugin

- [How to use the File Logging Plugin](#how-to-use-the-file-logging-plugin)
  - [What is the File Logging?](#what-is-the-file-logging)
  - [Watch the video on how to use the File Logging plugin](#watch-the-video-on-how-to-use-the-file-logging-plugin)
  - [Installation using Deck](#installation-using-deck)
  - [Installation using Admin API](#installation-using-admin-api)
  - [Installation using KIC](#installation-using-kic)

## What is the File Logging?

**File Logging:**  Logging requests and responses to a file involves capturing data related to incoming requests and outgoing responses and writing it to a log file on the server or a designated storage location.

## Watch the video on how to use the File Logging plugin

<!--
[![First [PLUGIN NAME]](./images/activate.png)](https://youtu.be/ "First [PLUGIN NAME]")
-->

## Installation using Deck

To install this using deck:

1. Navigate to this directory
2. Make sure you have deck [installed](https://docs.konghq.com/deck/latest/installation/)
3. Make sure your konnect token is set `export KONG_TOKEN=kpat_abcdedf....................yz`
4. Make sure you can connect: `deck ping --konnect-token $KONNECT_TOKEN` should return a successful response `Successfully Konnected to the Kong organization!`
5. Run deck sync: `deck sync --konnect-token $KONNECT_TOKEN --select-tag file-log-example`

## Installation using Admin API

You can leverage the insomnia repository [here](https://github.com/irishtek-solutions/kong-konnect-inso) for Admin API usage.

## Installation using KIC

