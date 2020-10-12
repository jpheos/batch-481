PRODUCTS = {
  'kiwi' => { price: 1.25, stock: 5 },
  'banana' => { price: 0.5, stock: 4 },
  'mango' => { price: 4, stock: 1 },
  'asparagus' => { price: 9, stock: 5 }
}.freeze

CART = Hash.new(0)

# CART = {"banana" => 2, "kiwi" => 2, "mango" => 1 }

# 0

#   0.5  * 2 => 1    | 1
# + 1.25 * 2 => 2.5  | 3.5
# + 4    * 1 => 4    | 7.5
# -----------------

def welcome
  puts '> --------------------'
  puts '> Welcome to Instacart'
  puts '> --------------------'
  puts '> In our store today:'
  PRODUCTS.each do |product, product_data|
    price = product_data[:price]
    stock = product_data[:stock]
    puts "> #{product}: #{price}€ (#{stock} available)"
  end
  puts '> --------------------'
end

def quantity_choice
  puts '> How many?'
  print '> '
  gets.chomp.to_i
end

def user_response
  puts "> Which item? (or 'quit' to checkout)"
  print '> '
  gets.chomp
end

def choose_quantity(product)
  quantity = quantity_choice
  quantity_stock = PRODUCTS[product][:stock]
  if quantity <= quantity_stock
    CART[product] += quantity
  else
    puts "> Sorry, there are only #{quantity_stock} #{product} left.."
  end
end

def select_products
  loop do
    response = user_response

    break if response == 'quit'

    if PRODUCTS.key? response
      choose_quantity(response)
    else
      puts "> Sorry, we don't have #{response} today.."
    end
  end
end

def bill
  total = 0

  puts '> -------BILL---------'
  CART.each do |product, quantity|
    price = PRODUCTS[product][:price]
    sub_total = price * quantity
    total += sub_total
    puts "> #{product}: #{quantity} X #{price}€ = #{sub_total}€"
  end
  puts "> TOTAL: #{total}€"
  puts '> --------------------'
end

welcome
select_products
bill
