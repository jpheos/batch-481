require 'amazing_print'
require 'nokogiri'
require 'open-uri'
require_relative 'recipe'


def scrapper(ingredient)
  # url = File.open('fraise.html')

  url = URI.open("https://www.marmiton.org/recettes/recherche.aspx?aqt=#{ingredient}")

  doc = Nokogiri::HTML(url, nil, 'utf-8')

  doc.search('.recipe-card').first(5).map do |recipe_card|
    name = recipe_card.search('h4').text
    description = recipe_card.search('.recipe-card__description').text.strip

    rating = recipe_card.search('.recipe-card__rating__value').text.strip.to_i



    Recipe.new(name, description, rating)
  end
end


# ap scrapper('chocolat')
