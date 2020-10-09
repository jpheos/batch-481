require "json"

mon_hash = JSON.parse('{ "name": "Paris", "population": 2211000 }')
# => { "name" => "Paris", "population" => 2211000 }

puts mon_hash.to_json
puts mon_hash.to_json.class
