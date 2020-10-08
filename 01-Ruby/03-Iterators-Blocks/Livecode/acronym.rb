def acronymize(sentence)
  sentence.split.map { |word| word[0].upcase }.join
end

describe 'acronymize' do
  it "returns an empty string when passed an empty string" do
    result = acronymize('')
    expect(result).to eq('')
  end

  it "returns the acronym on downcased sentences"do
    result = acronymize('what the fuck')
    expect(result).to eq('WTF')
  end

  it "returns the acronym on upcased sentences"do
    result = acronymize('AWAY FROM KEYBOARD')
    expect(result).to eq('AFK')
  end
end
