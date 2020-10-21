require 'csv'
require_relative '../models/customer'
require_relative 'base_repository'

class CustomerRepository < BaseRepository
  private

  def row_to_element(row)
    Customer.new(row)
  end

  def csv_headers
    %W[id name address]
  end

  def element_to_row(element)
    [element.id, element.name, element.address]
  end
end
