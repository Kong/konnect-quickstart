# How to Use the ACL Plugin

- [How to Use the ACL Plugin](#how-to-use-the-acl-plugin)
  - [What is the ACL?](#what-is-the-acl)
  - [Watch the video on how to use the ACL plugin](#watch-the-video-on-how-to-use-the-acl-plugin)
  - [Installation using Deck](#installation-using-deck)
  - [Installation using Admin API](#installation-using-admin-api)
  - [Installation using KIC](#installation-using-kic)

## What is the ACL?

**Access Control Lists (ACL’s):** Access Control Lists (ACLs) in an API gateway allow businesses to specify which clients or applications are allowed or denied access to specific API endpoints. ACLs are a set of rules that define who can access what resources.

## Watch the video on how to use the ACL plugin

<!--
[![First [PLUGIN NAME]](./images/activate.png)](https://youtu.be/ "First [PLUGIN NAME]")
-->

## Installation using Deck

To install this using deck:

1. Navigate to this directory
2. Make sure you have deck [installed](https://docs.konghq.com/deck/latest/installation/)
3. Make sure your konnect token is set `export KONG_TOKEN=kpat_abcdedf....................yz`
4. Make sure you can connect: `deck ping --konnect-token $KONNECT_TOKEN` should return a successful response `Successfully Konnected to the Kong organization!`
5. Run deck sync: `deck sync --konnect-token $KONNECT_TOKEN --select-tag acl-example`

## Installation using Admin API

You can leverage the insomnia repository [here](https://github.com/irishtek-solutions/kong-konnect-inso) for Admin API usage.

## Installation using KIC

