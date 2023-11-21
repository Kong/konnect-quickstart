local http = require "resty.http"

local function authorize_client(conf)

    -- Retrieve the client_id and client_secret headers
    local client_id = kong.request.get_header("client_id")
    local client_secret = kong.request.get_header("client_secret")

    ngx.req.set_header("X-New-Client-ID", client_id)
    ngx.req.set_header("X-New-Client-Secret",client_secret)

    -- External Endpoint Callout

    local httpc = http.new()
    local res, err = httpc:request_uri(conf.authorization_server_url, {
      method = "POST",
      headers = {
        ["Content-Type"] = "application/json"
      },
      body = {
        client_id = client_id,
        client_secret = client_secret,
        grant_type = "client_credentials"
      },
      ssl_verify = false,
    })

    if res.status == 200 then
        -- Authorization successful
        return
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