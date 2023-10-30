# Kong Konnect POC Guides and Material

<!--
## Getting started with Kong Konnect

This section walks through getting started with Konnect and helps with understanding the basic components.

- Here is the [slide deck](https://docs.google.com/presentation/d/1FqR7kqyFT5cVF0QtXcghDaElVXxXBpycYe_bQsyGMxc/edit?usp=sharing) for this section


| Topic           | Content       | Slides        | Videos         | Status         |
|-----------------|---------------|---------------|----------------|----------------|
| [Overview of Kong Konnect](./getting-started/overview-konnect/) | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>   | <ul><li>  [ ]  </li>     | In progress
| [Architecture](./getting-started/konnect-architecture/) | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>   | <ul><li>  [ ]  </li>  | In progress
| [Register for Kong Konnect](./getting-started/register-for-konnect/) | <ul><li>  [x]  </li>    | <ul><li>  [x]  </li>   | <ul><li>  [ ]  </li>   |  In progress
| [Product walk-through](./getting-started/product-walk-through/) | <ul><li>  [x]  </li>    | <ul><li>  [x]  </li>   | <ul><li>  [ ]  </li>   |  In progress
| [Useful Resources](./getting-started/useful-resources/) | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>     | <ul><li>  [ ]  </li>   | In progress

## Organization Overview

- Here is the [slide deck](https://docs.google.com/presentation/d/1MSfHY3J8WrLgwGLsat4KcKFBXPTP1Td3vCtlLlbVJY4/edit?usp=sharing) for this section

| Topic           | Content       | Slides        | Videos         | Status         |
|-----------------|---------------|---------------|----------------|----------------|
| [Overview of Organization](./organization/overview-of-organization/) | <ul><li>  [ ]  </li>     | <ul><li>  [ ]  </li>     | <ul><li>  [ ]  </li>   | Not started
| [Create a new admin in Konnect](./organization/create-a-new-admin/) | <ul><li>  [ ]  </li>     | <ul><li>  [ ]  </li>     | <ul><li>  [ ]  </li>   | Not started
| [Sign up with SSO (OKTA)](./organization/sso-okta/) | <ul><li>  [ ]  </li>     | <ul><li>  [ ]  </li>     | <ul><li>  [ ]  </li>   | Not started

## Gateway Manager and Data plane 

| Topic           | Content       | Slides        | Videos         | Status         |
|-----------------|---------------|---------------|----------------|----------------|
| [Overview of Gateway Manager](./runtime-groups-runtime-instances/overview-runtime-groups/) | <ul><li>  [ ]  </li>     | <ul><li>  [ ]  </li>     | <ul><li>  [ ]  </li>   | Not started
| [How to create a Runtime group](./runtime-groups-runtime-instances/get-runtime-group-id/) | <ul><li>  [ ]  </li>     | <ul><li>  [ ]  </li>     | <ul><li>  [ ]  </li>   | Not started
-->
## Konnect Gateway Install

| Topic           | Content       | Slides        | Videos         | Status         |
|-----------------|---------------|---------------|----------------|----------------|
| [Quick install (Docker)](./install/quickstart-install/) | <ul><li>  [ ]  </li>     | <ul><li>  [ ]  </li>     | <ul><li>  [ ]  </li>   | Not started
| [Docker Compose Install](./install/docker-compose/) | <ul><li>  [ ]  </li>     | <ul><li>  [ ]  </li>     | <ul><li>  [ ]  </li>   | Not started
| [Install on VM (EC2)](./install/vm-install/) | <ul><li>  [ ]  </li>     | <ul><li>  [ ]  </li>     | <ul><li>  [ ]  </li>   | Not started
| [Install on Kubernetes (EKS)](./install/kubernetes-install/) | <ul><li>  [ ]  </li>     | <ul><li>  [ ]  </li>     | <ul><li>  [ ]  </li>   | Not started
| [KIC install](./install/kic-install/) | <ul><li>  [x]  </li>     | <ul><li>  [ ]  </li>     | <ul><li>  [x]  </li>   | Not started

## Basic Config

| Topic           | Content       | Slides        | Videos         | Status         |
|-----------------|---------------|---------------|----------------|----------------|
| [Service and Routes in Konnect](./config/services-and-routes/) | <ul><li>  [ ]  </li>     | <ul><li>  [ ]  </li>     | <ul><li>  [ ]  </li>   | Not started
| [Upstreams and targets](./config/upstreams-targets/) | <ul><li>  [ ]  </li>     | <ul><li>  [ ]  </li>     | <ul><li>  [ ]  </li>   | Not started
| [Consumers](./config/consumers/) | <ul><li>  [ ]  </li>     | <ul><li>  [ ]  </li>     | <ul><li>  [ ]  </li>   | Not started
<!--
## Analytics

| Topic           | Content       | Slides        | Videos         | Status         |
|-----------------|---------------|---------------|----------------|----------------|
| [Overview of Analytics](./analytics/overview-analytics/) | <ul><li>  [ ]  </li>     | <ul><li>  [ ]  </li>     | <ul><li>  [ ]  </li>   | Not started
| [Create a report](./analytics/create-report/) | <ul><li>  [ ]  </li>     | <ul><li>  [ ]  </li>     | <ul><li>  [ ]  </li>   | Not started

## API Products

| Topic           | Content       | Slides        | Videos         | Status         |
|-----------------|---------------|---------------|----------------|----------------|
| [Overview of API Products](./api-products/api-products-overview/) | <ul><li>  [ ]  </li>     | <ul><li>  [ ]  </li>     | <ul><li>  [ ]  </li>   | Not started
| [Creating an API product](./api-products/creating-api-product/) | <ul><li>  [ ]  </li>     | <ul><li>  [ ]  </li>     | <ul><li>  [ ]  </li>   | Not started
-->

## Plugins

Plugins extend the functionality of the Kong Gateway. Plugins allow you to easily add new features and functionality to your API. They offer the ability to do things like: 

- Authentication
- Rate Limiting
- Security
- Transformations
- And more…

Plugins can be applied globally or scoped to specific services, consumers or routes. This section gives a breakdown of plugins and how to configure them. 

- Here is a link to our [plugin hub](https://docs.konghq.com/hub/) which has documentation for all available plugins
- Here is the [slide deck](https://docs.google.com/presentation/d/1Rl_bCmI0dSlw-ydvprb3UkZCFhllkkorwwOGqHc5At4/edit?usp=sharing) for this plugin section.
- Here is the link to the [insomnia collection]() when configuring using the Admin API


### Using the Admin API with Insomnia

You can leverage the insomnia collection [here](https://github.com/irishtek-solutions/kong-konnect-inso)
<!--
[![Using Insomnia](./images/activate.png)](https://youtu.be/ "First [PLUGIN NAME]")
-->

#### Authentication plugins

| Topic           | Content       | Slides        | Videos         | Insomnia       | KIC           | Deck           |Status         |
|-----------------|---------------|---------------|----------------|----------------|---------------|----------------|---------------|
| [Key Authentication](./plugins/authentication/key-authentication/) | <ul><li>  [x]  </li>  |  <ul><li>  [x]  </li>  | <ul><li>  [ ]  </li>     | <ul><li>  [x]  </li>     |<ul><li>  [x]  </li>   | <ul><li>  [x]  </li>   |In progress
| [Basic Authentication](./plugins/authentication/basic-authentication/) | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>  | <ul><li>  [ ]  </li>     |<ul><li>  [x]  </li>   | <ul><li>  [x]  </li>   | <ul><li>  [x]  </li>   | In progress

#### Security plugins

| Topic           | Content       | Slides        | Videos         |Insomnia        | KIC           |Deck           | Status         |
|-----------------|---------------|---------------|----------------|----------------|---------------|---------------|----------------|
| [Rate Limiting](./plugins/security/rate-limiting/) | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>     |  <ul><li>  [ ]  </li>  | <ul><li>  [x]  </li>     |<ul><li>  [x]  </li>     | <ul><li>  [x]  </li>   | In progress
| [Rate limiting advanced](./plugins/security/rate-limiting-adv/) | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>     |  <ul><li>  [ ]  </li>     |<ul><li>  [x]  </li>  | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>   | In progress
| [IP Restriction](./plugins/security/ip-restriction/) | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>  | <ul><li>  [ ]  </li>  | <ul><li>  [x]  </li>    | <ul><li>  [x]  </li>   | <ul><li>  [x]  </li>   | In progress

#### Traffic Control

| Topic           | Content       | Slides        | Videos         | Insomnia       | KIC            |Deck           |Status         |
|-----------------|---------------|---------------|----------------|----------------|----------------|---------------|---------------|
| [ACL](./plugins/traffic-control/acl/) | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>     | <ul><li>  [ ]  </li>     | <ul><li>  [x]  </li>     | <ul><li>  [ ]  </li>  |<ul><li>  [x]  </li>   | In progress
| [Canary](./plugins/traffic-control/canary/) | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>     |  <ul><li>  [ ]  </li>  | <ul><li>  [x]  </li>     |<ul><li>  [x]  </li>     |<ul><li>  [x]  </li>   | In progress


#### Analytics & Monitoring

| Topic           | Content       | Slides        | Videos         | Insomnia       | KIC            |Deck           |Status         |
|-----------------|---------------|---------------|----------------|----------------|----------------|---------------|---------------|
| [Prometheus](./plugins/analytics-monitoring/prometheus/) | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>     |  <ul><li>  [ ]  </li>  |<ul><li>  [x]  </li>     | <ul><li>  [x]  </li>     |<ul><li>  [x]  </li>   | In progress

#### Transformation

| Topic           | Content       | Slides        | Videos         | Insomnia       | KIC            |Deck           |Status         |
|-----------------|---------------|---------------|----------------|----------------|----------------|---------------|---------------|
| [Correlation ID](./plugins/transformation/correlation-id/) | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>     |  <ul><li>  [ ]  </li>  |<ul><li>  [x]  </li>     |<ul><li>  [x]  </li>     | <ul><li>  [x]  </li>   | In progress
| [Request Transformer](./plugins/transformation/req-transformer/) | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>     |  <ul><li>  [ ]  </li>  |<ul><li>  [x]  </li>     | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>   | In progress

#### Logging

| Topic           | Content       | Slides        | Videos         | Insomnia       | KIC            |Deck           | Status         |
|-----------------|---------------|---------------|----------------|----------------|----------------|---------------|----------------|
| [File Log](./plugins/logging/file-log/) | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>     | <ul><li>  [ ]  </li>     |  <ul><li>  [x]  </li>  |<ul><li>  [x]  </li>     |<ul><li>  [x]  </li>   | In progress
| [HTTP log](./plugins/logging/http-log/) | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>     |  <ul><li>  [ ]  </li>  | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>     |<ul><li>  [x]  </li>   | In progress


## How to guides

| Topic           | Status       |
|-----------------|---------------|
| [How to get your Runtime Group ID](./runtime-groups-runtime-instances/get-runtime-group-id/) | In Progress  | 
| [How to get your Organization ID](./organization/get-konnect-org-id/)  | Not started  | 