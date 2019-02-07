require_relative './deck'
require_relative './playing_card'
RANKS = [*(2..10), 'J', 'Q', 'K', 'A']
SUITS = %w{clubs hearts spades diamonds}
HAND_SIZE = 5
class PlayingCardDeck < Deck
  def initialize
    super
    populate_deck
    shuffle
  end

  def deal_poker_hands(count)
    poker_hands = Array.new(count){ [] }
    generate_hands(poker_hands)
  end

  def generate_hands(poker_hands)
    HAND_SIZE.times do
      poker_hands.each do |hand|
        hand << @cards.pop
      end
    end
    poker_hands
  end

  private

  def populate_deck
    SUITS.each do |suit|
      RANKS.each do |rank|
        @cards << PlayingCard.new(rank,suit)
      end
    end
  end
end