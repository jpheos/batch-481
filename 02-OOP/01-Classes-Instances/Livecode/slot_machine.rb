class SlotMachine
  ALLOWED_ITEMS = %w[cherries seven bell stars joker]
  MINIMAL_SCORE = 5

  def initialize(reels = [])
    @reels = reels
  end

  def play
    shuffled_reels = []
    3.times { shuffled_reels << ALLOWED_ITEMS.sample }
    @reels = shuffled_reels
    display_reels
  end

  def score
    if three_identical
      MINIMAL_SCORE * 2 * item_score(@reels.first)
      # joker = 50 = 25 x 2 = 5 x 5 x 2
      # star  = 40 = 20 x 2 = 5 x 4 x 2
      # bell  = 30 = 20 x 2 = 5 x 3 x 2
    elsif two_identical_and_joker
      MINIMAL_SCORE * item_score(@reels.sort[1])
    else
      0
    end
  end

  def display_reels
    puts "#{@reels.join(' / ')} - Your score is #{score}"
  end

  def item_score(item)
    ALLOWED_ITEMS.index(item) + 1
  end

  def three_identical
    @reels.uniq.size == 1
  end

  def two_identical_and_joker
    flattened_reels = @reels.uniq
    flattened_reels.include?('joker') && flattened_reels.size == 2
  end
end


machine = SlotMachine.new

machine.play
