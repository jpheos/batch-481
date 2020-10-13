require 'nokogiri'
require 'amazing_print'
require 'open-uri'

def scrapper(article)
  # 1. We get the HTML page content
  # html_content = File.open('results.html')
  html_content = URI.open("https://www.etsy.com/search?q=#{article}").read

  # 2. We build a Nokogiri document from this file
  doc = Nokogiri::HTML(html_content)

  # 3. We search for the correct elements containing the items' title in our HTML doc
  doc.search('.v2-listing-card .v2-listing-card__info .text-body').first(10).map do |element|
    # 4. For each item found, we extract its title and print it
    element.text.strip.match(/[\w\s]+/)[0]
  end
end
