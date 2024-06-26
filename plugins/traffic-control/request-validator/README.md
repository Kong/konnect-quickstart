## Kubernetes instructions
# How to use the Request Validator Plugin

- [How to use the Request Validator Plugin](#how-to-use-the-request-validator-plugin)
  - [What is the Request Validator?](#what-is-the-request-validator)
  - [Watch the video on how to use the Request Validator plugin](#watch-the-video-on-how-to-use-the-request-validator-plugin)
  - [Installation using Deck](#installation-using-deck)
  - [Installation using Admin API](#installation-using-admin-api)
  - [Installation using KIC](#installation-using-kic)

## What is the Request Validator?

## Watch the video on how to use the Request Validator plugin

<!--
[![First [PLUGIN NAME]](./images/activate.png)](https://youtu.be/ "First [PLUGIN NAME]")
-->

## Installation using Deck

To install this using deck:

1. Navigate to this directory
2. Make sure you have deck [installed](https://docs.konghq.com/deck/latest/installation/)
3. Make sure your konnect token is set `export KONNECT_TOKEN=kpat_abcdedf....................yz`
4. Make sure you can connect: `deck ping --konnect-token $KONNECT_TOKEN` should return a successful response `Successfully Konnected to the Kong organization!`
5. Run deck gateway sync: `deck gateway sync --konnect-token $KONNECT_TOKEN --select-tag request-validator-example`

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
4. **Proxy to the endpoint:** Using insomnia or `curl http://<kong-proxy-endpoint>:<port>/requestValidator`
5. **Add the plugin resource:** `kubectl apply -f 3-request-validator-plugin.yaml`
6. **Proxy to the endpoint, plugin is now enabled:** Using insomnia or curl, feel free to start testing this out. Let's start by testing a call that complies with the schema: 
`curl --request POST  --url http://<kong-proxy-endpoint>:<port>/requestValidator --header 'Content-Type: application/json' --data '{ "name": "King Kong", "age": 25, "address": { "street": "150 Spear Street", "zipcode": "94105" }}'`
This command should return a 200 OK.
However, if we make a call that doesn't meet the schema (the "age" key value pair is missing), 
`curl --request POST  --url http://<kong-proxy-endpoint>:<port>/requestValidator --header 'Content-Type: application/json' --data '{ "name": "King Kong", "address": { "street": "150 Spear Street", "zipcode": "94105" }}'`
We should receive an error response.
