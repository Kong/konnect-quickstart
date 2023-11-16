# How to Use the IP Restriction Plugin

- [How to Use the IP Restriction Plugin](#how-to-use-the-ip-restriction-plugin)
  - [What is the IP Restriction?](#what-is-the-ip-restriction)
  - [Watch the video on how to use the IP Restriction plugin](#watch-the-video-on-how-to-use-the-ip-restriction-plugin)
  - [Installation using Deck](#installation-using-deck)
  - [Installation using Admin API](#installation-using-admin-api)
  - [Installation using KIC](#installation-using-kic)

## What is the IP Restriction?

**IP Restriction:** allows businesses to control which IP addresses or ranges are allowed or denied access to the API. It can be used to whitelist trusted IPs or blacklist malicious IPs.

**How it works with Konnect**

1. Create a Service and Route
2. Test to see if we can proxy request
3. Enable Kong’s IP Restriction Plugin to deny my IP address
4. Test to see if I can now access the API


![IP Restriction](../../images/IP-Restriction.png)

## Watch the video on how to use the IP Restriction plugin

[Youtube video on IP Restriction Plugin](https://youtu.be/A3aR7GkaCoU?si=2zz_IPFCZKPP_Opk)

## Installation using Deck

To install this using Deck:

1. Navigate to this directory
2. Make sure you have eck [installed](https://docs.konghq.com/deck/latest/installation/)
3. Make sure your konnect token is set `export KONNECT_TOKEN=kpat_abcdedf....................yz`
4. Make sure you can connect: `deck ping --konnect-token $KONNECT_TOKEN` should return a successful response `Successfully Konnected to the Kong organization!`
5. Run deck sync: `deck sync --konnect-token $KONNECT_TOKEN --select-tag ip-restriction-example`

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
4. **Proxy to the endpoint:** Using insomnia or `curl http://<kong-proxy-endpoint>:<port>/ip-restriction`
5. **Add the plugin resource:** `kubectl apply -f 3-ip-restriction-plugin.yaml`
6. **Proxy to the endpoint, plugin is now enabled:** Using insomnia or `curl http://<kong-proxy-endpoint>:<port>/ip-restriction`

