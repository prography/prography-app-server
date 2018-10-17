require "net/http"
require "uri"
require "json"

uri = URI.parse("https://localhost:3000/user/sign_in")

# Shortcut
response = Net::HTTP.get_response(uri)

# Will print response.body
Net::HTTP.get_print(uri)

# Full
http = Net::HTTP.new(uri.host, uri.port)
http.use_ssl = true
response = http.request(Net::HTTP::Get.new(uri.request_uri))

arr = JSON.parse(response.body)

arr.each do |a|
    puts a["title"]
end
