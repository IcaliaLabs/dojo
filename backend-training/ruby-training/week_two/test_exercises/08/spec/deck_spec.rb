require_relative '../lib/deck'

class TestDeck < Deck
  def initialize
    super
    @cards = (1..100).to_a.shuffle
  end
end

describe Deck do
  subject { deck }
  let(:deck) { TestDeck.new }

  describe '#shuffle' do
    it 'should shuffle the deck' do
      expect { subject.shuffle }.to change { subject.cards.first }
    end
  end

  describe '#deal' do
    subject { deck.deal }

    it 'should consume one card' do
      expect { subject }.to change { deck.cards.count }.from(100).to(99)
    end

    context 'when no cards remain' do
      before { 100.times { deck.deal } }

      it 'should raise an OutOfCardsError when no cards remain' do
        expect { subject }.to raise_error OutOfCardsError
      end
    end
  end
end
