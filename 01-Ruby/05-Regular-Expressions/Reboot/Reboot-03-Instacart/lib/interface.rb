# TODO: you can build your instacart program here!

PRODUCTS = {
  "kiwi" => 1.25,
  "banana" => 0.5,
  "mango" => 4,
  "asparagus" => 9
}

CART = Hash.new(0)

# CART = {"banana" => 2, "kiwi" => 2, "mango" => 1 }

# 0

#   0.5  * 2 => 1    | 1
# + 1.25 * 2 => 2.5  | 3.5
# + 4    * 1 => 4    | 7.5
# -----------------



def welcome
  puts "> --------------------"
  puts "> Welcome to Instacart"
  puts "> --------------------"
  puts "> In our store today:"
  PRODUCTS.each do |product, price|
    puts "> #{product}: #{price}€"
  end
  puts "> --------------------"
end

def quantity_choice
  puts "> How many?"
  print "> "
  gets.chomp.to_i
end

def select_products
  continue = true
  while continue
    puts "> Which item? (or 'quit' to checkout)"
    print '> '
    response = gets.chomp
    if response == 'quit'
      continue = false
    elsif PRODUCTS.key? response
      puts "je dois bien ajouter mon item"
      CART[response] += quantity_choice
    else
      puts "> Sorry, we don't have #{response} today.."
    end
  end
end

def bill
  total = 0

  puts "> -------BILL---------"
  CART.each do |product, quantity|
    price = PRODUCTS[product]
    sub_total = price * quantity
    total += sub_total
    puts "> #{product}: #{quantity} X #{price}€ = #{sub_total}€"
  end
  puts "> TOTAL: #{total}€"
  puts "> --------------------"
end

welcome
select_products
bill


