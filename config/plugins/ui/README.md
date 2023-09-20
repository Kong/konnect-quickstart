# Add your first [ENTITY] in the Konnect UI

## Video on how to create [ENTITY] in the Konnect UI

<!--
[![Adding new [ENTITY] in KIC](./images/)](https://youtu.be/ "Adding new [ENTITY] in KIC")
-->


# Add your first Plugin in the Konnect UI

**Pre-Requisites**

1. Access to Konnect Control Plane

**Steps**

In this walkthrough we are going to use the Rate limiting plugin to showcase how to add a plugin. The rate limiting plugin limits how many times one can call an API. 

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

11. Go to plugin section, and add a plugin

![Add plugin](../../images/add-plugin.png)

12. Search for rate limiting and select

![Search rate Limiting](../../images/search-rate-limiting.png)

13. Configure the rate limiting plugin to limit by 5 per minute.

![Configure Plugin](../../images/config-plugin.png)

14. Go back to the rate limiting 

![Test to see plugin enforced]()

15. We can see the rate limiting headers being applied `X-RateLimit-Limit-Minute` and `X-RateLimit-Remaining-Minute`