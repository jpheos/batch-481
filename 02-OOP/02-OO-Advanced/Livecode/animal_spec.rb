require_relative 'animal'

describe Animal do
  describe '#new' do
    it "returns an Animal" do
      animal = Animal.new("toto")
      expect(animal).to be_an(Animal)
    end

    it "returns it's name" do
      animal = Animal.new("toto")
      expect(animal.name).to eq('toto')
    end
  end

  describe '.phyla' do
    it 'returns the four phylas' do
      phylas = Animal.phylas
      expect(phylas).to eq(%w[Deuterostomia Ecdysozoa Lophotrochozoa Radiata])
    end
  end

  describe '#eat' do
    it 'returns a sentence like "Timon eats a scorpion"' do
      animal = Animal.new("Timon")
      expect(animal.eat('scorpion')).to eq("Timon eats a scorpion")
    end
  end
end
