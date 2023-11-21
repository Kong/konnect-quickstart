return {
    name = "kong-customheader",
    fields = {
      { config = {
          type = "record",
          fields = {
            { header_name = { type = "string", default = "X-Custom-Header" }},
            { header_value = { type = "string", default = "Default-Value" }},
          },
        },
      },
      
    },
  }