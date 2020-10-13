require 'csv'
require 'amazing_print'
require_relative 'scrapper'

LIST = []

def save_csv
  CSV.open('gifts.csv', 'wb') do |csv|
    csv << ['name', 'marked']

    LIST.each do |item|
      csv << [item[:name], item[:marked]]
    end
  end
end

def load_csv
  csv_options = { headers: :first_row }
  CSV.foreach('gifts.csv', csv_options) do |row|
    item_name = row['name']
    marked = row['marked'] == 'true'
    LIST << { name: item_name, marked: marked }
  end
end

def list
  LIST.each_with_index do |item, i|
    mark = item[:marked] ? 'X' : ' '
    puts "> #{i + 1} - [#{mark}] #{item[:name]}"
  end
end

def add
  puts '> What you want to add?'
  print '> '
  item_name = gets.chomp
  item = { name: item_name, marked: false }
  LIST << item
  save_csv
end

def delete
  list
  puts 'What do you want to delete? (Choose a number)'
  print '> '
  index = gets.chomp.to_i - 1
  LIST.delete_at(index)
  save_csv
end

def mark
  list
  puts 'What do you want to mark? (Choose a number)'
  print '> '
  index = gets.chomp.to_i - 1
  LIST[index][:marked] = true
  save_csv
end

def idea
  puts "What are you looking for on Etsy?"
  idea = gets.chomp
  articles = scrapper(idea)
  articles.each_with_index do |article, i|
    puts "#{i + 1} - #{article}"
  end
  puts 'Pick one to add to your list (give the number)'
  print '> '
  index = gets.chomp.to_i - 1
  item_name = articles[index]
  item = { name: item_name, marked: false }
  LIST << item
  save_csv
end

def run
  load_csv
  continue = true

  while continue
    puts '> Which action [list|add|delete|mark|idea|quit]?'
    print '> '
    action = gets.chomp

    case action
    when 'list'   then list
    when 'add'    then add
    when 'delete' then delete
    when 'mark'   then mark
    when 'idea'   then idea
    when 'quit'   then continue = false
    else
      puts 'Wrong choice...'
    end
  end
end

puts '> Welcome to your Christmas gift list'
run
puts '> Goodbye'

