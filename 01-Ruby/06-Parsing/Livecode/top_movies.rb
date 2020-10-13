require 'nokogiri'
require 'amazing_print'
require 'open-uri'
require 'yaml'

def title(doc)
  doc.search('h1').text.match(/(?<title>.+).\(/)[:title]
end


def year(doc)
  doc.search('h1').text.match(/\((?<year>\d+)\)/)[:year].to_i
end

def cast(doc)
  doc.search('.credit_summary_item').last.search('a').first(3).map do |a|
    a.text
  end
end

def storyline(doc)
  doc.search('.summary_text').text.strip
end

def director(doc)
  doc.search('.credit_summary_item').first.search('a').text
end

def fetch_movie(url)
  file = URI.open(url)
  doc = Nokogiri::HTML(file)
  {
    cast: cast(doc),
    director: director(doc),
    storyline: storyline(doc),
    title: title(doc),
    year: year(doc)
  }
end


def fetch_top_movies
  file = URI.open('https://www.imdb.com/chart/top')
  doc = Nokogiri::HTML(file)


  urls = doc.search('.titleColumn a').first(5).map do |a|
    'https://www.imdb.com' + a.attribute('href').value
  end

  urls.map {|url| fetch_movie(url) }
end




File.open("movies.yml", "w") { |f| f.write fetch_top_movies.to_yaml }

# ap fetch_movie('https://www.imdb.com/title/tt0111161/')


