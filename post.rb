require "net/http"
require "uri"
require "json"

params = {'email' => 'ysh2491@google.com', 'user_name' => 'post 요청 보내기'}
json_headers = {"Content-Type" => "application/json",
                "Accept" => "application/json"}

uri = URI.parse('https://localhost:3000/users/sign_in')
http = Net::HTTP.new(uri.host, uri.port)
http.use_ssl = true

response = http.post(uri.path, params.to_json, json_headers)

puts response.body
