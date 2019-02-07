require_relative './deck'
require_relative './playing_card'

class PlayingCardDeck < Deck
  def initialize
    super
    assign_ranks
    assign_suits
    populate_deck
    shuffle
  end

  def deal_poker_hands(count)
    poker_hands = create_empty_hands(count)
    deal_cards_to(poker_hands)
  end

  private

  def assign_ranks
    @ranks = [*(2..10), 'J', 'Q', 'K', 'A']
  end

  def assign_suits
    @suits = ['clubs', 'hearts', 'spades', 'diamonds']
  end

  def populate_deck
    @suits.each do |suit|
      @ranks.each do |rank|
        @cards << PlayingCard.new(rank,suit)
      end
    end
  end

  def create_empty_hands(hands)
    (1..hands).map { |hand| [] }
  end

  def deal_cards_to(poker_hands)
    5.times do
      poker_hands.each { |hand| hand << @cards.pop }
    end
    poker_hands
  end
end