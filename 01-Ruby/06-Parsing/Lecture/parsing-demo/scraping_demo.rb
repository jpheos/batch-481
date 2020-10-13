require 'open-uri'
require 'nokogiri'
require 'amazing_print'
# Let's scrape recipes from http://www.epicurious.com

ingredient = 'vanilla'
url = "https://www.bbcgoodfood.com/search/recipes?q=#{ingredient}"


html_file = URI.open(url).read

html_doc = Nokogiri::HTML(html_file)

recipes = []

html_doc.search('.standard-card-new__article-title').each do |link|
  recipes << {
    title: link.text,
    url: "https://www.bbcgoodfood.com" + link.attribute('href').value
  }
end


ap recipes
