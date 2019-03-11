require_relative '../lib/playing_card_deck'

describe PlayingCardDeck do
  subject { deck }
  let(:deck) { PlayingCardDeck.new }
  let(:cards) { subject.cards }
  let(:card_names) { subject.cards.map { |card| card.inspect }}

  describe '#initialize' do
    it 'should create a deck of playing cards' do
      expect(cards.count).to eql 52
      expect(card_names).to include 'A of spades'
    end

    it 'should shuffle the deck' do
      expect_any_instance_of(PlayingCardDeck).to receive(:shuffle)
      subject
    end
  end

  describe '#deal_poker_hands' do
    subject { deck.deal_poker_hands 3 }

    it 'should consume cards' do
      expect { subject }.to change { deck.cards.count }.from(52).to(37)
    end

    it 'should deal the right number of poker hands' do
      expect(subject.count).to eql 3
    end

    it 'should deal 5-card poker hands' do
      expect(subject.map { |hand| hand.count }).to eql [5, 5, 5]
    end

    it 'should deal unique hands' do
      expect(subject.flatten.uniq.count).to eql 15
    end
  end
end
