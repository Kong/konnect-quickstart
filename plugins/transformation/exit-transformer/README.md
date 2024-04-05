# How to use the exit-transformer Plugin

- [How to use the exit-transformer Plugin](#how-to-use-the-exit-transformer-plugin)
	- [What is the Exit Transformer plugin?](#what-is-the-exit-transformer-plugin)
	- [Watch the video on how to use the exit-transformer plugin](#watch-the-video-on-how-to-use-the-exit-transformer-plugin)
	- [Installation using Deck](#installation-using-deck)
	- [Installation using KIC](#installation-using-kic)

IMPORTANT: [untrusted-lua](https://docs.konghq.com/gateway/latest/reference/configuration/#untrusted_lua) must be set to either on or sandbox in your kong configuration file for this plugin to work. The default value is sandbox, which means that Lua functions are allowed, but will be executed in a sandbox which has limited access to the Kong global environment.

## What is the Exit Transformer plugin?

Transform and customize Kong Gateway response exit messages using Lua functions. The plugin’s capabilities range from changing messages, status codes, and headers, to completely transforming the structure of Kong Gateway responses.

**How to do it with Konnect**

1. Create a Service and Route
2. Test to see if we can proxy a request
3. Enable Kong’s Key Authentication Plugin
4. Try to access the API now. We will not be able to access the API. You will get a error message back like below:

```
{
	"message": "No API key found in request",
	"request_id": "9291b854245e0c082997a74cfee7575d"
}
```


5. Enable the custom exit transformer
6. Test by calling the proxy, you will get a customized response saying:

```
{
	"message": "No API key found in request, please provide one via the apikey header!",
	"error": true,
	"status": 401
}
```

## Watch the video on how to use the exit-transformer plugin

[Youtube video using the Exit Transformer Plugin](https://youtu.be/GQuSTuGuOZQ?si=6n2A6o7yrgqA-lOc)

## Installation using Deck

1. Navigate to this directory
2. Make sure you have deck [installed](https://docs.konghq.com/deck/latest/installation/)
3. Make sure your konnect token is set `export KONNECT_TOKEN=kpat_abcdedf....................yz`
4. Make sure you can connect: `deck gateway ping --konnect-token $KONNECT_TOKEN` should return a successful response `Successfully Konnected to the Kong organization!`
5. Run deck sync: `deck gateway sync --konnect-token $KONNECT_TOKEN --select-tag exit-transformer-example kong.yaml`
![Exit Transformer](./images/../../../images/exit-trans.png)

## Installation using KIC

**Pre-requisite**
exit-trans.pngk
Make sure you have Kong Ingress Controller installed and it's working. When running  `kubectl get svc,po -n kong` it should look something similar like below:

```
$ kubectl get svc,po -n kong

NAME                                         TYPE           CLUSTER-IP     EXTERNAL-IP      PORT(S)                         AGE
service/kong-controller-validation-webhook   ClusterIP      10.23.42.46    <none>           443/TCP                         2m50s
service/kong-gateway-admin                   ClusterIP      None           <none>           8444/TCP                        2m50s
service/kong-gateway-manager                 NodePort       10.23.41.176   <none>           8002:32214/TCP,8445:31304/TCP   2m50s
service/kong-gateway-proxy                   LoadBalancer   10.23.37.74    <ip-address>     80:32018/TCP,443:30662/TCP      2m50s

NAME                                   READY   STATUS    RESTARTS   AGE
pod/kong-controller-65c79f48bf-8vjp5   1/1     Running   0          2m48s
pod/ko
```

1. **Install Echo deployment:** `kubectl apply -f 1-create-echo.yaml`
2. **Add Ingress Resource:** `kubectl apply -f 2-echo-ingress.yaml` 
3. **Note: `konghq.com/plugins: key-auth-plugin,exit-transformer` ingress annotations are already present for the plugin**
4. **Add the plugin resource:** `kubectl apply -f 3-key-auth-plugin.yaml`
5. **Proxy to the endpoint:** Using insomnia or `curl http://<kong-proxy-endpoint>:<port>/exit-transformer`. You will get the following response:

```
{
	"message": "No API key found in request",
	"request_id": "9291b854245e0c082997a74cfee7575d"
}
```

6. **Add the Exit transfomer plugin resource:** `kubectl apply -f 4-exit-transformer-plugin.yaml`
7. **Proxy to the endpoint, plugin is now enabled:** Using insomnia or `curl http://<kong-proxy-endpoint>:<port>/exit-transformer` . You should now get the following response: 


```
{
	"message": "No API key found in request, please provide one via the apikey header!",
	"error": true,
	"status": 401
}
```