require_relative '../models/patient'
require 'csv'

class PatientRepository
  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @patients = []

    load_csv
  end

  def all
    @patients
  end

  def add_patient(patient)
    @patients << patient
    save_csv
  end

  def remove_patient(patient_index)
    @patients.delete_at(patient_index)
    save_csv
  end


  private

  def load_csv
    csv_options = { headers: :first_row , header_converters: :symbol}

    CSV.foreach(@csv_file_path, csv_options) do |row|
      row[:id] = row[:id].to_i
      row[:cured] = row[:cured] == 'true'

      # row[:room] = quelque chose row[:room_id]
      @patients << Patient.new(row)
    end
  end

  def save_csv
    CSV.open(@csv_file_path, 'wb') do |csv|
      @patients.each do |patient|
        csv << [patient.name, patient.description]
      end
    end
  end
end
