require 'json'
require 'net/http'
require 'awesome_print'

github_username = ARGV[0]

url = "https://api.github.com/users/#{github_username}"

response = Net::HTTP.get(URI(url))

response_hash = JSON.parse(response)

puts response_hash["avatar_url"]
