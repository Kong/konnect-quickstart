## Open Telemetry - Install


# How to use the Open Telemetry Plugin

- [What is Open Telemetry](#what-is-the-Open Telemetry)
- [Watch the video on how to use the Open Telemetry plugin](#watch-the-video-on-how-to-use-the-[INSERT PLUGIN]plugin) 
- [Installation using Deck](./plugins/open-telemetry/plugins/open-telemetry/kong.yaml)
- [Installation using Admin API](Installation-using-Admin-API)
- [Installation using KIC](Installation-using-KIC)

## What is the Open Telemetry?

OpenTelemetry provides a single, open source standard, and a set of technologies to capture and export metrics, traces, and logs from your cloud-native applications and infrastructure to an OTLP-compatible server.

Pre-requisite: Enable the OpenTelemetry tracing capability in Kong Gateway’s configuration - Valid values can be found in the [Kong’s configuration](https://docs.konghq.com/gateway/latest/reference/configuration/#tracing_instrumentations).

`tracing_instrumentations = all`
 
`tracing_sampling_rate = 1.0` 

How it works with Konnect

1. Create a Service and Route
2. Enable Kong’s Open Telemetry Plugin configuring
   -  HTTP endpoint ending with `/v1/traces`
   -  Bearer Authorisation Header in the form of `Authorization: Bearer xxxxxxxxxx`
3. Proxy to endpoint
4. Check OTLP-compatible platform (E.G: Elastic, Grafana, Datadog) to see the traces



## Watch the video on how to use the Open Telemetry plugin

<!--
[![First [PLUGIN NAME]](./images/activate.png)](https://youtu.be/ "First [PLUGIN NAME]")
-->

## Installation using Deck

To install this using deck:

1. Navigate to this directory
2. Make sure you have deck [installed](https://docs.konghq.com/deck/latest/installation/)
3. Make sure your konnect token is set `export KONNECT_TOKEN=kpat_abcdedf....................yz`
4. Make sure you can connect: `deck ping --konnect-token $KONNECT_TOKEN` should return a successful response `Successfully Konnected to the Kong organization!`
5. Run deck sync: `deck gateway sync --konnect-token $KONNECT_TOKEN --select-tag **-example`

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
3. **Change URL and Authorisation value** in `3-open-telemetry-plugin.yaml` insert your valid url and bearer authorisation token
4. **Note: `konghq.com/plugins: open-telemetry` ingress annotation is already present for the plugin**
5. **Proxy to the endpoint:** Using insomnia or `curl http://<kong-proxy-endpoint>:<port>/opentelemetry`
6. **Add the plugin resource:** `kubectl apply -f 3-open-telemetry-plugin.yaml`
7. **Proxy to the endpoint, plugin is now enabled:** Using insomnia or `curl http://<kong-proxy-endpoint>:<port>/opentelemetry`
