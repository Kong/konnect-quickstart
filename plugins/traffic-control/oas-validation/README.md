## Kubernetes instructions
# How to use the OAS Validation Plugin

- [What is OAS Validation](#what-is-oas-validation)
- [Watch the video on how to use the OAS Validation plugin](#watch-the-video-on-how-to-use-the-oas-validation-plugin) 
- [Installation using Deck](#installation-using-deck)
- [Installation using Admin API](#installation-using-admin-api)
- [Installation using KIC](#installation-using-kic)

## What is OAS Validation?
This plugin allows you to validate HTTP requests and responses based on an API specification. This plugin supports both Swagger v2 and OpenAPI v3 specifications JSON request and response bodies, with support for schema definitions described using JSON Schema draft v4. 

## Watch the video on how to use the OAS Validation plugin

<!--
[![First OAS Validation](./images/activate.png)](https://youtu.be/ "First [PLUGIN NAME]")
-->

## Installation using Deck

To install this using deck:

1. Navigate to this directory
2. Make sure you have deck [installed](https://docs.konghq.com/deck/latest/installation/)
3. Make sure your konnect token is set `export KONNECT_TOKEN=kpat_abcdedf....................yz`
4. Make sure you can connect: `deck ping --konnect-token $KONNECT_TOKEN` should return a successful response `Successfully Konnected to the Kong organization!`
5. Run deck sync: `deck sync --konnect-token $KONNECT_TOKEN --select-tag oas-validation-example`

## Installation using Admin API

You can leverage the insomnia repository [here](https://github.com/irishtek-solutions/kong-konnect-inso) for Admin API usage.

## Installation using KIC


**Pre-requisite**

Make sure you have Kong Ingress Controller installed and it's working. Follow the installation instructions on the control plane or follow these [instructions](../../install/kic-install/). When running  `kubectl get svc,po -n kong` it should look something like below:

```
$ kubectl get svc,po -n kong

NAME                                         TYPE           CLUSTER-IP     EXTERNAL-IP      PORT(S)                         AGE
service/kong-controller-validation-webhook   ClusterIP      10.23.42.46    <none>           443/TCP                         2m50s
service/kong-gateway-admin                   ClusterIP      None           <none>           8444/TCP                        2m50s
service/kong-gateway-manager                 NodePort       10.23.41.176   <none>           8002:32214/TCP,8445:31304/TCP   2m50s
service/kong-gateway-proxy                   LoadBalancer   10.23.37.74    <ip-address>     80:32018/TCP,443:30662/TCP      2m50s

NAME                                   READY   STATUS    RESTARTS   AGE
pod/kong-controller-65c79f48bf-8vjp5   1/1     Running   0          2m48s
pod/kong-gateway-6bcb9d8d7c-6z8pr      1/1     Running   0          2m48s
```

1. **Install Echo deployment:** `kubectl apply -f 1-create-echo.yaml`
2. **Add Ingress Resource:** `kubectl apply -f 2-echo-ingress.yaml` 
3. **Note: `konghq.com/plugins: <plugin-name>` ingress annotation is already present for the plugin**
4. **Proxy to the endpoint:** Using insomnia or `curl http://<kong-proxy-endpoint>:<port>/oasValidation`
5. **Add the plugin resource:** `kubectl apply -f 3-oas-validation-plugin.yaml`
6. **Proxy to the endpoint, plugin is now enabled:** Using insomnia make the following two calls: `curl http://<kong-proxy-endpoint>:<port>/oasValidation/anything` and `curl http://<kong-proxy-endpoint>:<port>/oasValidation/foo`. The first call should return a 200 OK as it exists in the OAS file. The second request will return an error as it fails the validation.