-- handler.lua

local CustomHeaderHandler = {
    PRIORITY = 1000, -- set the plugin priority, which determines plugin execution order
    VERSION = "0.1", -- version in X.Y.Z format. Check hybrid-mode compatibility requirements.
  
  }
  
  function CustomHeaderHandler:access(config)
    -- Get the header name and value from the plugin configuration
    local header_name = config.header_name or "X-Custom-Header"
    local header_value = config.header_value or "Default-Value"
  
    -- Add the header to the request
    ngx.req.set_header(header_name, header_value)
  end
  
  return CustomHeaderHandler
  