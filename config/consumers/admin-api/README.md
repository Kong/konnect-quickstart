# Deploy your first [ENTITY] using the Admin API

## Video on how to create [ENTITY] using Deck

<!--
[![Adding new [ENTITY] using the Admin API](./images/)](https://youtu.be/ "Adding new [ENTITY] using the Admin API")
-->

## Deploy your first [ENTITY] using the Admin API

**Pre-Requisites**

1. Gateway/Dataplane/Runtime instance running. Following one of these [guides](../install/) if you have not set it up yet.
2. A [Personal Access token](../deck/create-deck-token-konnect/personal-access-token/) or a [System Access Token](../deck/create-deck-token-konnect/system-access-token/). 
3. Rest client, browser or curl access to call the Admin API endpoint. You can use the [Insomnia Collection](LINK TO Insomnia Collection)

**Steps**

1. Configure insomnia correctly to point to your environment
2. Search for `Consumer" 
3. Run the following command to create a consumer:

[Create Consumer](../../images/create-consumer.png)

4. This is the example of what a curl command would look like:

```
curl --request POST \
  --url https://us.api.konghq.com/v2/runtime-groups/<RTG>/core-entities/consumers \
  --header 'Authorization: Bearer <TOKEN>' \
  --header 'Content-Type: application/json' \
  --data '{
	"username": "first-consumer",
	"tags": [],
	"custom_id": "first-consumer-id"
}'
```

