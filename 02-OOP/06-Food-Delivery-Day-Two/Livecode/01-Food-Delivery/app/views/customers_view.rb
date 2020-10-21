class CustomersView
  def display_all(customers)
    customers.each_with_index do |customer, index|
      puts "#{index + 1} - #{customer.name} (#{customer.address})"
    end
  end

  def ask_name
    puts "Enter a name:"
    print '> '
    gets.chomp
  end

  def ask_address
    puts "Enter a address:"
    print '> '
    gets.chomp
  end
end
