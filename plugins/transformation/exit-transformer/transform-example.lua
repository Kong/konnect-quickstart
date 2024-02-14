     -- transform.lua
     return function(status, body, headers)
        if not body or not body.message then
          return status, body, headers
        end
        headers = { ["x-some-header"] = "some value" }
        local new_body = {
          error = true,
          status = status,
          message = body.message .. ", please provide one via the apikey header!",
        }
        return status, new_body, headers
      end