# Working with your first Consumer

**Consumer:** typically refers to an entity that consumes or uses the APIs managed by Kong. Consumers can be applications, services, or users who interact with your APIs. Kong allows you to define and manage consumers, apply access control policies, and monitor their usage of APIs.

Consumers in Kong are often associated with key authentication, OAuth, or other authentication and authorization mechanisms. They are essential for controlling access to your APIs, tracking usage, and ensuring security.

**Pre-requisite:** Konnect data plane up and running. If you do not, refer to the [installation guides](../../install/) for setting up Data Planes.

## How to create a Consumer in the UI

<!--
[![Adding new Consumer using the UI](./images/)](https://youtu.be/ "Adding new Consumer using the Admin API")
-->

## Video on how to create a Consumer using Deck

<!--
[![Adding new Consumer using the Admin API](./images/)](https://youtu.be/ "Adding new Consumer using Deck")
-->

To install this using deck:

1. Navigate to this directory
2. Make sure you have deck [installed](https://docs.konghq.com/deck/latest/installation/)
3. Make sure your konnect token is set `export KONNECT_TOKEN=kpat_abcdedf....................yz`
4. Make sure you can connect: `deck ping --konnect-token $KONNECT_TOKEN` should return a successful response `Successfully Konnected to the Kong organization!`
5. Run deck sync: `deck sync --konnect-token $KONNECT_TOKEN --select-tag first-consumer`

## Deploy your first Consumer using the Admin API

You can leverage the insomnia repository [here](https://github.com/irishtek-solutions/kong-konnect-inso) for Admin API usage.

<!--
[![Adding new Consumer using the Admin API](./images/)](https://youtu.be/ "Adding new Consumer using the Admin API")
-->

## Deploy your first Consumer using KIC

<!--
[![Adding new Consumer using KIC(./images/)](https://youtu.be/ "Adding new Consumer using the Admin API")
-->

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

1. **Install Echo deployment:** `kubectl apply -f 1-consumer.yaml`
2. **Check to see if consumer is installed:** `kubectl get KongConsumer -n testing`