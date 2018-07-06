require 'faraday'
require 'oj'

client = Faraday.new(url: 'http://localhost:3000') do |config|
    config.adapter Faraday.default_adapter
    config.token_auth('9b6632ac6e814455f06cff19a9e1dbef')
end

response = client.post do |req|
    req.url '/api/v1/posts'
    req.headers['Content-type'] = 'application/json'
    req.body = '{"post": {"titulo": "Nuevo Post 16666", "cuerpo": "Nuevo Post para Oscar Rod 1666"} }'
end

puts Oj.load(response.body)
puts response.status