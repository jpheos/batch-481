require 'awesome_print'

paris = {
  country: "France",
  country: "Germany",
  population: 2211000
}
# germany = { "population" => 2211000}
# p germany
# p paris["country"]

paris["monument"] = "Tour Eiffel"
paris["monument"] = "Arc de triomphe"
# ap paris["meilleur_kebab"]

# ap paris.delete("monument")

# ap hash
ap paris


# paris.each do |key, value|
#   puts "Paris #{key} is #{value}"
# end


# p paris.key? 'monument'
# p paris.key? 'meilleur_kebab'

# p paris.keys.class
# p paris.values
