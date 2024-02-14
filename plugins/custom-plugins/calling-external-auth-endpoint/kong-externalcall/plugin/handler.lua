local http = require "resty.http"

local function authorize_client(conf)

    -- Retrieve the client_id and client_secret headers
    local Authorization = kong.request.get_header("Authorization")
    ngx.req.set_header("X-New-Authorization", Authorization)

    -- External Endpoint Callout

    local httpc = http.new()
    local res, err = httpc:request_uri(conf.authorization_server_url, {
      method = "GET",
      headers = {
        -- ["Content-Type"] = "application/json",
        ["X-New-Authorization"] = Authorization
      }
    })

    if res.status == 200 then
        -- Authorization successful
        return
    elseif res.status == 401 then
        return kong.response.exit(401, { message = "You are not authorized to access this endpoint. Please contact your admin." })
    else
        return kong.response.exit(403, { message = "Unexpected response from authorization server" })
    end
end

local CustomPluginHandler = {
  PRIORITY = 1000,
  VERSION = "0.1.0",
}

function CustomPluginHandler:access(conf)
  authorize_client(conf)
end

return CustomPluginHandler