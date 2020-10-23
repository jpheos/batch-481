# DB -> table doctors (name, age, id, specialty)

# Doctor.all => [doctor1, doctor2]
# Doctor.find(13) => doctor13

class Doctor
  # DB.execute()

  def initialize(attributes)
  end

  def self.all
    results = DB.execute("?")
    return results
  end

  def self.find(id)
    result = DB.execute(?)
    return Doctor.new(?)
  end
end


Doctor.find(13) # => <Doctor>

Doctor.all # => [<Doctor>, <Doctor>, ... ]




# yann = Doctor.new(name: 'Yann Legendre', age: 30, specialty: 'One man show')
# # Stored in memory

# yann.id # => nil

# yann.save
# # DB -> INSERT
# # Trigger SQL request to save yann in DB

# yann.id # => 41

# yann.specialty = 'BG'
# # yann specialty is now BG in memory
# yann.save
# # DB -> UPDATE
# # yann specialty is now BG in memory and DB

# yann.destroy
# # DB -> DELETE
# # yann still exists in memory






require 'sqlite3'
require 'amazing_print'

DB = SQLite3::Database.new("doctors.db")

DB.results_as_hash = true

results = DB.execute("SELECT * FROM doctors")

ap results







