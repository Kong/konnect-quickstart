return {
  name = "kong-externalcall",
  fields = {
    { config = {
        type = "record",
        fields = {
          { authorization_server_url = { type = "string", default = "http://example.server/auth" }}
        },
      },
    },
    
  },
}