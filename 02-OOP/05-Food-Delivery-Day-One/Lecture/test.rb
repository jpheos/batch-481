require 'amazing_print'

require_relative 'models/patient'
require_relative 'models/room'

require_relative 'repositories/patient_repository'

ap PatientRepository.new('data/patients.csv')

# patient1 = Patient.new(name: 'toto')
# patient2 = Patient.new(name: 'titi', cured: true)
# patient3 = Patient.new(name: 'tata')

# room1 = Room.new(capacity: 2)
# room2 = Room.new(capacity: 3)

# ap patient1
# ap room1


# room1.add_patient(patient1)
# room1.add_patient(patient2)
# room2.add_patient(patient3)

# ap "----------------------------"
# ap patient1.room
