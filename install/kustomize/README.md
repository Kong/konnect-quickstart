# Install Guide for installing Konnect Data PLane using Kustomize

## Video on Installing Konnect Gateway using Kustomize

[COMING Link to Youtube Video.]()

## Step by step for installing Konnect Gateway using Kustomize

**Pre-Requisites**

1. Access to Konnect
2. Access to Kubernetes Cluster
3. kustomize installed on your machine

**Install Steps**

1. Log into Konnect
2. Go to Gateway Manager
3. Click on the Control Plane (default)
4. Click on `Create A New Data Plane Node`
5. Select Kubernetes Install
6. The file structure should look something like this. If you look in the base directory of this example, you will see examples of what it looks like:

```
kustomize/
├── base/
│   ├── kustomization.yaml
│   ├── namespace.yaml
│   ├── secret.yaml
│   ├── service.yaml
│   └── deployment.yaml
```

7. The `namespace.yaml` file will remain the same, this is just creating the `Kong` namespace for us.
8. The `service.yaml` file will remain the same, this is just creating the `loadbalancer` service to expose the proxy.
9. In the Konnect control plane, generate the certificate and key. These need to be base64 encoded and then populated in for `{BASE64_ENCODED_CERTIFICATE}` and `{BASE64_ENCODED_KEY}` in the `secret.yaml` file. 
10. In the `deployment.yaml` file, replace the `$KONG_*` values with the one generated in the control plane
11. To start the deployment run `kubectl apply -k .`
12. If you run the following command you should get something like the following. The proxy is exposed over 34.x.x.x


```
 $ kubectl get svc,po -n kong
NAME                    TYPE           CLUSTER-IP     EXTERNAL-IP    PORT(S)                      AGE
service/proxy-service   LoadBalancer   10.112.15.57   34.x.x.x   80:32189/TCP,443:32751/TCP   33m

NAME                                READY   STATUS    RESTARTS   AGE
pod/kong-gateway-65c4bf6cfb-dtg75   1/1     Running   0          33m
```

13. When you make a call to the proxy endpoint you should get a response that looks like this:

```
$ curl http:// 34.x.x.x
{
  "message":"no Route matched with those values",
  "request_id":"a406510958a89360bc50644c5a89126c"
}
```


