return {
    name = "http-log",
    fields = {
      { config = {
          type = "record",
          fields = {
            authorization_server_url = { type = "string", default = "http://54.244.74.165/auth" },
          },
        },
      },
    },
  }