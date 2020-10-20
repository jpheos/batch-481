class Room
  attr_accessor :id

  def initialize(attributes = {})
    @capacity = attributes[:capacity] || 0
    @patients = attributes[:patients] || []
  end

  def full?
    @patients.size == @capacity
  end

  def add_patient(patient)
    raise StandardError, 'Room is full' if full?

    @patients << patient
    patient.room = self
  end
end
