require 'Date'


def days_until_xmas
  xmas_day = Date.new(2020, 12, 25)
  day = Date.today
  (xmas_day - day).to_i
end


p days_until_xmas == 80
