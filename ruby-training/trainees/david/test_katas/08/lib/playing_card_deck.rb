require_relative './deck'
require_relative './playing_card'

class PlayingCardDeck < Deck
  def initialize
    super
    @ranks = [*(2..10), 'J', 'Q', 'K', 'A']
    @suits = ['clubs', 'hearts', 'spades', 'diamonds']
 
    @ranks.each do |rank|
      @suits.each do |suit|
        card = PlayingCard.new(rank,suit)
        @cards << card
      end
    end

    shuffle
  end

  def deal_poker_hands(count)
    poker_hands = (1..count).map { |hand| [] }
    (1..5).each do |card|
      poker_hands.each { |hand| hand << @cards.pop }
    end
    poker_hands
  end
end