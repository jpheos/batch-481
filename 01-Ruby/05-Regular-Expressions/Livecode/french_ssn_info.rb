require 'yaml'

MONTHS = %W[January February March April May June July August September October November December]

SSN_REGEX = /^(?<gender>[12])(?<year>\d{2})(?<month>0[1-9]|1[0-2])(?<department>0[1-9]|2[AB1-9]|9[0-5]|[1345678]\d)\d{6}\d{2}/
DEPARTMENTS = YAML.load_file('data/french_departments.yml')

def valid_key?(ssn)
  number = ssn[0..-3].to_i
  key = ssn[-2..-1].to_i
  (97 - number) % 97 == key
end

def gender(match_data)
  match_data[:gender] == '1' ? 'man' : 'woman'
end

def month(match_data)
  month_index = match_data[:month].to_i
  MONTHS[month_index - 1]
end

def year(match_data)
  "19#{match_data[:year]}"
end


def department(match_data)
  DEPARTMENTS[match_data[:department]]
end

def french_ssn_info(ssn)
  ssn.gsub!(/\s/, '')
  match_data = ssn.match(SSN_REGEX)
  return 'invalid number' if match_data.nil?
  return 'invalid number' unless valid_key?(ssn)

  gender = gender(match_data)
  month = month(match_data)
  year = year(match_data)
  department = department(match_data)

  "a #{gender}, born in #{month}, #{year} in #{department}."
end





# p french_ssn_info("184127645108946")

