require 'csv'
require_relative '../models/employee'
require_relative 'base_repository'

class EmployeeRepository < BaseRepository

  def all_delivery_guys
    # @elements.select do |employee|
    #   employee.delivery_guy?
    # end
    @elements.select(&:delivery_guy?)
  end

  def find_by_username(username)
    @elements.find {|employee| employee.username == username}
  end

  undef :create

  private

  def row_to_element(row)
    Employee.new(row)
  end

  def csv_headers
    %W[id username password role]
  end

  def element_to_row(element)
    [element.id, element.username, element.password, element.role]
  end
end
