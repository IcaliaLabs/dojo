class Deck
  attr_reader :cards

  def initialize
    @cards = []
  end

  def shuffle
    @cards.shuffle!
  end

  def deal
    raise OutOfCardsError if @cards.empty?
    @cards.pop
  end
end

class OutOfCardsError < StandardError; end