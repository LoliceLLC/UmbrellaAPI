--- @meta
--- @class HTTP
HTTP = { }

--- Sends an HTTP request to the specified URL.
--- @param method string # The `HTTP` method to use (e.g., GET, POST).
--- @param url string # The `URL` to send the request to.
--- @param params table # The request parameters.
--- @param callback function # The function to be called with the server response.
--- Example:
--- ```lua
--- HTTP.Request("POST", "https://google.com/privet?medved=123456", {
---     headers = {
---         ["user-agent"] = "ChikinBomba",
---         custom_header = 1234
---     },
---     config = {
---         use_ssl = 0,
---         http_version = "1.0"
---     },
---     cookies = {
---         Pechenka = "ValuePechenka"
---     },
---     data = "login=aaa&password=aao"
---     }, 
---     function (response)
---         log(response)
---     end)
--- ```
function HTTP.Request(method, url, params, callback) end

return HTTP