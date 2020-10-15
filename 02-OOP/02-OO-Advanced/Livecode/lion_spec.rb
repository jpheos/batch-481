require_relative 'lion'

describe Lion do
  describe '#talk' do
    it "returns 'Simba roars'" do
      lion = Lion.new('Simba')
      expect(lion.talk).to eq('Simba roars')
    end
  end

  describe '#eat' do
    it 'returns a sentence like "Simba eats a gazelle. Law of the Jungle!"' do
      lion = Lion.new("Simba")
      expect(lion.eat('gazelle')).to eq("Simba eats a gazelle. Law of the Jungle!")
    end
  end
end
