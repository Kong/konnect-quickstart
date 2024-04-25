local error_map = {
    -- Default
    [0] = function (status, body, headers) return {
      message = body.message,
      _type = "KONG_ERROR",
    } end,
    ["no Route matched with those values"] = {
      message = '{ "kong":"error"}',
      status = 404,
    },
  }
  
  
  return function (status, body, headers)
    -- maybe try to get a better way if response comes from kong or not
    if not body or not body.message then
      return status, body, headers
    end
  
    -- Direct error match or default error
    local error = error_map[body.message] or error_map[0](status, body, headers)
  
    body = {
      message = error.message
    }
  
    status = error.status or status
    headers = error.headers or headers
  
    return status, body, headers
  end