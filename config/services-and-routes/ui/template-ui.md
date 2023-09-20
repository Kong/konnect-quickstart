# Add your first Service and Route in the Konnect UI

## Video on how to create Service and Route in the Konnect UI
<!--
[![Adding new Service and Route in KIC](./images/)](https://youtu.be/ "Adding new Service and Route in KIC")
-->

## Add your first Service and Route using the the UI

**Pre-Requisites**

1. Access to Konnect Control Plane

**Steps**

1. Test your proxy endpoint to see if you can get a response back, you should expect a 404 like below


![404](../../images/404.png)

2. Log into Konnect
3. Navigate to the Gateway Manager
4. Select Gateway Services
5. Click on `+ Gateway Service`
6. Configure your service

![Configure Service](../../images/configure-service.png)

7. Click on save once you are happy
8. Click on the routes section (not on the left hand side)

![Add route](../../images/add-route.png)

9. Configure your route, we will expose the service over /api like

![Configure Route](../../images/configure-route.png)  

10. Go to your proxy endpoint

![Test Proxy](../../images/test-proxy.png)