require 'amazing_print'
require_relative 'scrapper'

LIST = [
  {
    name: 'sockets',
    marked: true
  },
  {
    name: 'roller',
    marked: false
  },
  {
    name: 'ruby book',
    marked: false
  }
]

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
end

def delete
  list
  puts 'What do you want to delete? (Choose a number)'
  print '> '
  index = gets.chomp.to_i - 1
  LIST.delete_at(index)
end

def mark
  list
  puts 'What do you want to mark? (Choose a number)'
  print '> '
  index = gets.chomp.to_i - 1
  LIST[index][:marked] = true
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
end

def run
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
