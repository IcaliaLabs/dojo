class Deck
  attr_reader :cards

  def initialize
    @cards = []
  end

  def shuffle
    # your code here
  end

  def deal
    # your code here
  end
end

class OutOfCardsError < StandardError; end
