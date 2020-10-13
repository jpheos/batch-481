require 'json'
require 'amazing_print'

# PARSING
# filepath    = 'data/beers.json'
# content = File.read(filepath)
# data = JSON.parse(content)
# ap data

# STORING

beers = { beers: [
  {
    name:       'Edelweiss',
    appearance: 'White',
    origin:     'Austria'
  },
  {
    name:       'Guinness',
    appearance: 'Stout',
    origin:     'Ireland'
  }
]}

filepath = 'data/beers2.json'

ap beers
ap beers.to_json

ap "----"
ap JSON.generate(beers)

File.open(filepath, 'wb') do |file|
  file.write(JSON.pretty_generate(beers))
end
