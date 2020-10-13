require 'json'
require 'open-uri'
require 'amazing_print'

# TODO - Let's fetch name and bio from a given GitHub username
url = 'https://api.github.com/users/kevcha'
content = URI.open(url).read
data = JSON.parse(content)
ap data["name"]
