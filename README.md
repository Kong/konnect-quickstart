# Kong Konnect Kickstart

![Konnect Image](./getting-started/images/Kong-Konnect-logo.jpeg)

Welcome to the Kong Konnect Kickstart Repository! This comprehensive collection of documentation and guides is designed to assist you in seamlessly setting up, configuring, and harnessing the full potential of Kong Konnect. Whether you're a seasoned developer, a DevOps professional, or just getting started with API management, this repository is your go-to source for unlocking the power of Kong Konnect.

If you haven't already, sign up for Kong Konnect by following the Konnect Registration page [here](https://docs.konghq.com/konnect/getting-started/access-account/).

Or watch the video on how to sign up which is available [here](https://youtu.be/-SVxHxcztd0?si=_J_OJhSnYlxK5HG1).

## Table of Contents

- [Kong Konnect Kickstart](#kong-konnect-kickstart)
  - [Table of Contents](#table-of-contents)
  - [Konnect Gateway Install](#konnect-gateway-install)
  - [Basic Configuration](#basic-configuration)
  - [Analytics](#analytics)
  - [Plugins](#plugins)
      - [Authentication plugins](#authentication-plugins)
      - [Security plugins](#security-plugins)
      - [Traffic Control](#traffic-control)
      - [Analytics \& Monitoring](#analytics--monitoring)
      - [Transformation](#transformation)
      - [Logging](#logging)
  - [Workshops](#workshops)
  - [How to guides](#how-to-guides)

## Konnect Gateway Install

This section is all about installing the Data Plane. Click on the option that best suits your needs. Each section provides a video on how to install the Data Plane.

| Topic           | Content       | Slides        | Videos         | Status         |
|-----------------|---------------|---------------|----------------|----------------|
| [Quick install (Docker)](./install/quickstart-install/) | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>   | Completed
| [Docker Compose Install](./install/docker-compose/) | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>   | Completed
| [Install on VM (EC2)](./install/vm-install/) | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>     | <ul><li>  [ ]  </li>   | Completed
| [Install on Kubernetes](./install/kubernetes-install/) | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>   | Completed
| [KIC install](./install/kic-install/) | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>     | <ul><li>  [ ]  </li>   | Completed

## Basic Configuration

Kong Konnect is an API management platform that provides a comprehensive set of core main entities for managing and securing APIs and microservices. Here is a summary of these core entities:

- **Service:** A "Service" in Kong Konnect represents an API or microservice that you want to manage. It defines the backend API you want to expose, including the URL, name, and other related information.

- **Route:** A "Route" is used to define how requests to a particular Service should be processed. It specifies rules for routing incoming requests to the appropriate Service, including path matching, hostnames, and other criteria. Regex pattern matching is also supported.

- **Consumer:** A "Consumer" represents an entity or application that consumes your APIs. It can be an end-user, application, or system that interacts with your APIs. Consumers can be authenticated and authorized to access specific Services.

- **Plugins:** "Plugins" are extensions that enhance the functionality of Kong Konnect. They can be applied at different levels, such as globally, for specific Services, or for individual Routes. Plugins enable features like authentication, rate limiting, logging, and more.

- **Upstream and Targets:** "Upstream" refers to the backend servers that provide the actual implementation of a Service. "Targets" are specific instances of these backend servers. Kong Konnect can be configured to load balance and distribute incoming requests across these Targets, improving scalability and fault tolerance.

- **Certificates:** "Certificates" are used to secure the communication between clients and Kong Konnect by enabling HTTPS. You can associate SSL/TLS certificates with Services and Routes to ensure data encryption and secure API access.

These core entities in Kong Konnect allow you to effectively manage, secure, and control the flow of API traffic within your organization, making it a powerful tool for API gateway and microservices management.

| Topic           | Content       |  Videos         | Status         |
|-----------------|---------------|-----------------|----------------|
| [Service and Routes](./config/services-and-routes/) | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>     |  Completed
| [Upstreams and targets](./config/upstreams-targets/) | <ul><li>  [x]  </li>    | <ul><li>  [x]  </li>   | Completed
| [Consumers](./config/consumers/) | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>   | Completed


## Analytics
| Topic           | Content       | Slides        | Videos         | Status         |
|-----------------|---------------|---------------|----------------|----------------|
| [Overview of Analytics](./analytics/overview-analytics/) | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>   | Completed


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
- Here is the link to the [insomnia collection](https://github.com/irishtek-solutions/kong-konnect-inso) when configuring using the Admin API
- You can leverage the insomnia collection [here](https://github.com/irishtek-solutions/kong-konnect-inso)

#### Authentication plugins

| Topic           | Content       | Slides        | Videos         | Insomnia       | KIC           | Deck           |Status         |
|-----------------|---------------|---------------|----------------|----------------|---------------|----------------|---------------|
| [Key Authentication](./plugins/authentication/key-authentication/) | <ul><li>  [x]  </li>  |  <ul><li>  [x]  </li>  | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>     |<ul><li>  [x]  </li>   | <ul><li>  [x]  </li>   |Completed
| [Basic Authentication](./plugins/authentication/basic-authentication/) | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>  | <ul><li>  [x]  </li>     |<ul><li>  [x]  </li>   | <ul><li>  [x]  </li>   | <ul><li>  [x]  </li>   | Completed

#### Security plugins

| Topic           | Content       | Slides        | Videos         |Insomnia        | KIC           |Deck           | Status         |
|-----------------|---------------|---------------|----------------|----------------|---------------|---------------|----------------|
| [Rate Limiting](./plugins/security/rate-limiting/) | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>     |  <ul><li>  [x]  </li>  | <ul><li>  [x]  </li>     |<ul><li>  [x]  </li>     | <ul><li>  [x]  </li>   | Completed
| [Rate limiting advanced](./plugins/security/rate-limiting-adv/) | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>     |  <ul><li>  [ ]  </li>     |<ul><li>  [x]  </li>  | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>   | In progress
| [IP Restriction](./plugins/security/ip-restriction/) | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>  | <ul><li>  [x]  </li>  | <ul><li>  [x]  </li>    | <ul><li>  [x]  </li>   | <ul><li>  [x]  </li>   | Completed

#### Traffic Control

| Topic           | Content       | Slides        | Videos         | Insomnia       | KIC            |Deck           |Status         |
|-----------------|---------------|---------------|----------------|----------------|----------------|---------------|---------------|
| [ACL](./plugins/traffic-control/acl/) | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>     | <ul><li>  [ ]  </li>     | <ul><li>  [x]  </li>     | <ul><li>  [ ]  </li>  |<ul><li>  [x]  </li>   | In progress
| [Canary](./plugins/traffic-control/canary/) | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>     |  <ul><li>  [ ]  </li>  | <ul><li>  [x]  </li>     |<ul><li>  [x]  </li>     |<ul><li>  [x]  </li>   | In progress
| [OAS Validation](./plugins/traffic-control/oas-validation/) | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>     |  <ul><li>  [ ]  </li>  | <ul><li>  [x]  </li>     |<ul><li>  [x]  </li>     |<ul><li>  [x]  </li>   | In progress
| [Request Validator](./plugins/traffic-control/request-validator/) | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>     |  <ul><li>  [ ]  </li>  | <ul><li>  [x]  </li>     |<ul><li>  [x]  </li>     |<ul><li>  [x]  </li>   | In progress



#### Analytics & Monitoring

| Topic           | Content       | Slides        | Videos         | Insomnia       | KIC            |Deck           |Status         |
|-----------------|---------------|---------------|----------------|----------------|----------------|---------------|---------------|
| [Prometheus](./plugins/analytics-monitoring/prometheus/) | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>     |  <ul><li>  [ ]  </li>  |<ul><li>  [x]  </li>     | <ul><li>  [x]  </li>     |<ul><li>  [x]  </li>   | In progress

#### Transformation

| Topic           | Content       | Slides        | Videos         | Insomnia       | KIC            |Deck           |Status         |
|-----------------|---------------|---------------|----------------|----------------|----------------|---------------|---------------|
| [Correlation ID](./plugins/transformation/correlation-id/) | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>     |  <ul><li>  [ ]  </li>  |<ul><li>  [x]  </li>     |<ul><li>  [x]  </li>     | <ul><li>  [x]  </li>   | In progress
| [Request Transformer](./plugins/transformation/req-transformer/) | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>     |  <ul><li>  [ ]  </li>  |<ul><li>  [x]  </li>     | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>   | In progress
| [Exit Transformer](./plugins/transformation/exit-transformer/) | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>     |  <ul><li>  [ ]  </li>  |<ul><li>  [x]  </li>     | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>   | In progress

#### Logging

| Topic           | Content       | Slides        | Videos         | Insomnia       | KIC            |Deck           | Status         |
|-----------------|---------------|---------------|----------------|----------------|----------------|---------------|----------------|
| [File Log](./plugins/logging/file-log/) | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>     | <ul><li>  [ ]  </li>     |  <ul><li>  [x]  </li>  |<ul><li>  [x]  </li>     |<ul><li>  [x]  </li>   | In progress
| [HTTP log](./plugins/logging/http-log/) | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>     |  <ul><li>  [ ]  </li>  | <ul><li>  [x]  </li>     | <ul><li>  [x]  </li>     |<ul><li>  [x]  </li>   | In progress


## Workshops

| Topic           | Description       |
|-----------------|---------------|
| [Konnect Academy](https://education.konghq.com/) | Kong Konnect free academy for multiple courses on the Konnect platform  | 
| [AWS - API Management with Kong Konnect](https://catalog.workshops.aws/kong-konnect) |  Explore the Kong Konnect platform through an architectural overview, then install Konnect runtime on Amazon EKS. Understand key concepts like services, routes, and plugins. Deploy a sample microservice, access it via a defined route, and utilize Konnect for authentication, authorization, rate limiting, response transformation, AWS Lambda invocation, and proxy caching. Lastly, learn observability features for comprehensive platform monitoring.  | 
| [AWS - EKS Terraform Blueprints with Kong Konnect Ingress Controller](https://catalog.workshops.aws/kong-konnect-kic)  | Gain insight into the architecture of Kong Ingress Controller, then install it on Amazon EKS using the EKS Blueprint Addon for Konnect KIC. Familiarize yourself with ingresses and Kong plugins. Deploy a sample microservice, access it through the defined ingress, and leverage Kong Ingress Controller for authentication, authorization, rate limiting, response transformation, and proxy caching. Additionally, explore observability features for effective monitoring.  | 
| [AWS - Service Mesh Implementation with Kong Mesh in Konnect](https://catalog.workshops.aws/kong-konnect-mesh)  | Discover the Service Mesh Pattern, explore the architectural overview of Kong Mesh, and install Kong Mesh runtime on Amazon EKS. Deploy a microservice-based app, managing component communication. Employ Kong Mesh policies for zero-trust security, Canary Releases, and Traffic Permission.  | 


## How to guides

| Topic           | Description       |
|-----------------|---------------|
| [How to get your Control Plane ID](./gateway-manager/get-runtime-group-id/) |  Sign up To Kong Konnect | 
| [Add a Custom Plugin to Konnect](./how-to/add-a-custom-plugin/)  | Step by step guide on how to add a custom plugin to Konnect  | 