# Plugins and how to use them

If you don't have a data plane installed, now is a good time to do that. You can the documentation [here](https://docs.konghq.com/konnect/gateway-manager/data-plane-nodes) on how to do that or also in this github repository there are videos and documentation on how to set it up, just click [here](../install/) to go to the install section.

This section of the Kong Konnect github repository will walk you through how to use the Kong Konnect Plugins.
Each plugin has its own directory showing you how to configure the plugin in different ways. For the majority of the plugins it will contain the following:

- A video walking you through
- A `deck file` that allows you to import an example configuration quickly
- Link to Insomnia collection on how to use the Admin API to configure plugins with examples
- A Kubernetes manifest file that will allow you to apply the configuration using Kubernetes resources

Plugins extend the functionality of the Kong Gateway. Plugins allow you to easily add new features and functionality to your API. They offer the ability to do things like: 

- Authentication
- Rate Limiting
- Security
- Transformations
- And more…

Plugins can be applied globally or scoped to specific services, consumers or routes. This section gives a breakdown of plugins and how to configure them. 

- Here is a link to our [plugin hub](https://docs.konghq.com/hub/) which has documentation for all available plugins
- Here is the [slide deck](https://docs.google.com/presentation/d/1Rl_bCmI0dSlw-ydvprb3UkZCFhllkkorwwOGqHc5At4/edit?usp=sharing) for this plugin section.
- Here is the link to the [insomnia collection](https://github.com/irishtek-solutions/kong-konnect-inso) when configuring using the Admin API

## Using Deck

Each plugin directory has a Deck file that you can use to import a sample configuration to the control plane to test. The instructions on how to import are in the README files for each section.

## Using the Admin API with Insomnia

You can leverage the insomnia collection [here](https://github.com/irishtek-solutions/kong-konnect-inso)
<!--
[![Using Insomnia](./images/activate.png)](https://youtu.be/ "First [PLUGIN NAME]")
-->

### Authentication plugins

| Topic           | Content       | Slides        | Videos         | Insomnia       | KIC           | Deck           |Status         |
|-----------------|---------------|---------------|----------------|----------------|---------------|----------------|---------------|
| [Key Authentication](./authentication/key-authentication/) | <ul><li>  [x]  </li>  |  <ul><li>  [x]  </li>  | <ul><li>  [ ]  </li>     | <ul><li>  [x]  </li>     |<ul><li>  [ ]  </li>   | <ul><li>  [x]  </li>   |In progress
| [Basic Authentication](./authentication/basic-authentication/) | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>  | <ul><li>  [ ]  </li>     |<ul><li>  [x]  </li>   | <ul><li>  [ ]  </li>   | <ul><li>  [x]  </li>   | In progress

### Security plugins

| Topic           | Content       | Slides        | Videos         |Insomnia        | KIC           |Deck           | Status         |
|-----------------|---------------|---------------|----------------|----------------|---------------|---------------|----------------|
| [Rate Limiting](./security/rate-limiting/) | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>     |  <ul><li>  [ ]  </li>  | <ul><li>  [x]  </li>     |<ul><li>  [ ]  </li>     | <ul><li>  [x]  </li>   | In progress
| [Rate limiting advanced](./security/rate-limiting-adv/) | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>     |  <ul><li>  [ ]  </li>     |<ul><li>  [x]  </li>  | <ul><li>  [ ]  </li>     | <ul><li>  [x]  </li>   | In progress
| [IP Restriction](./security/ip-restriction/) | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>  | <ul><li>  [ ]  </li>  | <ul><li>  [x]  </li>    | <ul><li>  [ ]  </li>   | <ul><li>  [x]  </li>   | In progress

### Traffic Control

| Topic           | Content       | Slides        | Videos         | Insomnia       | KIC            |Deck           |Status         |
|-----------------|---------------|---------------|----------------|----------------|----------------|---------------|---------------|
| [ACL](./traffic-control/acl/) | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>     | <ul><li>  [ ]  </li>     | <ul><li>  [x]  </li>     | <ul><li>  [ ]  </li>  |<ul><li>  [x]  </li>   | In progress
| [Canary](./traffic-control/canary/) | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>     |  <ul><li>  [ ]  </li>  | <ul><li>  [x]  </li>     |<ul><li>  [ ]  </li>     |<ul><li>  [x]  </li>   | In progress


### Analytics & Monitoring

| Topic           | Content       | Slides        | Videos         | Insomnia       | KIC            |Deck           |Status         |
|-----------------|---------------|---------------|----------------|----------------|----------------|---------------|---------------|
| [Prometheus](./analytics-monitoring/prometheus/) | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>     |  <ul><li>  [ ]  </li>  |<ul><li>  [x]  </li>     | <ul><li>  [ ]  </li>     |<ul><li>  [x]  </li>   | In progress

### Transformation

| Topic           | Content       | Slides        | Videos         | Insomnia       | KIC            |Deck           |Status         |
|-----------------|---------------|---------------|----------------|----------------|----------------|---------------|---------------|
| [Correlation ID](./transformation/correlation-id/) | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>     |  <ul><li>  [ ]  </li>  |<ul><li>  [x]  </li>     |<ul><li>  [ ]  </li>     | <ul><li>  [x]  </li>   | In progress
| [Request Transformer](./transformation/req-transformer/) | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>     |  <ul><li>  [ ]  </li>  |<ul><li>  [x]  </li>     | <ul><li>  [ ]  </li>     | <ul><li>  [x]  </li>   | In progress

### Logging

| Topic           | Content       | Slides        | Videos         | Insomnia       | KIC            |Deck           | Status         |
|-----------------|---------------|---------------|----------------|----------------|----------------|---------------|----------------|
| [File Log](./logging/file-log/) | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>     | <ul><li>  [ ]  </li>     |  <ul><li>  [x]  </li>  |<ul><li>  [ ]  </li>     |<ul><li>  [x]  </li>   | In progress
| [HTTP log](./logging/http-log/) | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>     |  <ul><li>  [ ]  </li>  | <ul><li>  [x]  </li>     | <ul><li>  [ ]  </li>     |<ul><li>  [x]  </li>   | In progress