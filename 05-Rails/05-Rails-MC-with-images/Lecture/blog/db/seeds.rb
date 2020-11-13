require "open-uri"

file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
Article.find(3).photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
