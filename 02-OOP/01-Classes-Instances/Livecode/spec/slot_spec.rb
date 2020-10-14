require_relative '../slot_machine'
require 'rspec'

def test_score(expected_score, reels)
  it "returns #{expected_score} if #{reels.join('/')}" do
    machine = SlotMachine.new(reels)

    expect(machine.score).to eq expected_score
  end
end

describe 'SlotMachine' do
  # it 'returns 50 if 3 jokers' do
  #   reels = ['joker', 'joker', 'joker']
  #   machine = SlotMachine.new(reels)

  #   expect(machine.score).to eq 50
  # end
  test_score(0, %w[joker cherries seven])

  test_score(50, %w[joker joker joker])
  test_score(40, %w[stars stars stars])
  test_score(30, %w[bell bell bell])
  test_score(20, %w[seven seven seven])
  test_score(10, %w[cherries cherries cherries])

  test_score(25, %w[joker joker seven])
  test_score(25, %w[joker bell joker])
  test_score(20, %w[joker stars stars])
  test_score(15, %w[bell joker bell])
  test_score(10, %w[seven joker seven])
  test_score(5, %w[cherries cherries joker])
end
