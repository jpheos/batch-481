require 'rspec'
require_relative '../citizen'

describe 'Citizen' do
  it 'displays the fullname' do
    jojo = Citizen.new('Joseph', 'BLANCHARD', 33)

    expect(jojo.full_name).to eq 'Joseph Blanchard'
  end

  describe 'can_vote' do
    it 'returns false if underage' do
      kiki = Citizen.new('Kiki', 'Le mineur', 14)

      expect(kiki.can_vote?).to be false
    end

    it 'returns true if of age' do
      jeanmichel = Citizen.new('JM', 'Le vieux', 70)

      expect(jeanmichel.can_vote?).to be true
    end
  end
end


# Implement a Citizen class with the following API:

#initialize(first_name, last_name, age)

#can_vote? (boolean)
#full_name (String)
