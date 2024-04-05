# Working with your first Service and Route

**Service:** In Kong, a Service represents a backend service or microservice that you want to expose through the API gateway. It encapsulates information about how to communicate with the actual service, including the service's URL, protocol, port, and other relevant details. Kong acts as a proxy for these services, handling requests and responses between clients and the backend services.

**Route:** A Route is a way to associate an incoming request with a specific Service.
It defines rules for how incoming requests should be processed and forwarded to the appropriate backend service.
A Route is essentially a mapping between a specific path or host and a Service. When a request matches the criteria specified in a Route, Kong forwards the request to the associated Service.

![Route and Service](../images/route-and-service.png)

**Pre-requisite:** Konnect data plane up and running. If you do not, refer to the [installation guides](../../install/) for setting up Data Planes.

## How to create a Service and Route in the UI

[Youtube video on creating a Service and Route](https://youtu.be/BBV0mP2cgdo?si=bEGXLlA5o6X_Un2z)

## Video on how to create a Service and Route using Deck

[Youtube video on creating a Service and Route using Deck](https://youtu.be/DzNQuG3V_Cs?si=ckAXvHPMxqFqI-e5)

To install this using deck:

1. Navigate to this directory
2. Make sure you have deck [installed](https://docs.konghq.com/deck/latest/installation/)
3. Make sure your konnect token is set `export KONNECT_TOKEN=kpat_abcdedf....................yz`
4. Make sure you can connect: `deck ping --konnect-token $KONNECT_TOKEN` should return a successful response `Successfully Konnected to the Kong organization!`
5. Run deck sync: `deck sync --konnect-token $KONNECT_TOKEN --select-tag first-service-route`

## Deploy your first Service and Route using the Admin API

You can leverage the insomnia repository [here](https://github.com/Kong/konnect-quickstart-inso.git) for Admin API usage.

[Youtube video on creating a Service and Route using the Konnect Admin API](https://youtu.be/vryyB8B1ZoU?si=Xe8WtEj1jgUe0GCB)

## Deploy your first Service and Route using KIC

[Youtube video on creating a Service and Route using KIC](https://youtu.be/p8zbYSXj_ak?si=wXgJ0WfyveOy02AC)


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
3. **Proxy request to your proxy endpoint**