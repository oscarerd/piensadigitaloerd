require 'faraday'
require 'oj'

client = Faraday.new(url: 'http://localhost:3000') do |config|
    config.adapter Faraday.default_adapter
    config.token_auth('9b6632ac6e814455f06cff19a9e1dbef')
end

response = client.delete do |req|
    req.url '/api/v1/posts/16'
    req.headers['Content-type'] = 'application/json'
end

puts Oj.load(response.body)
puts response.status