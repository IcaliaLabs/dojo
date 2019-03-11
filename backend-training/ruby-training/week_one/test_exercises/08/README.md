# Cards

Your friend is building an online poker game and he wants your help. You'll be using object-oriented programming to implement a deck of playing cards.

Your friend is thinking of using your code for other card games too, so he wants you to build a PlayingCardDeck for the poker app, as well as a generic Deck that he could use in other games.

# Usage

Edit `lib/deck.rb` and `lib/playing_card_deck.rb` to build your functionality. We've given you the basic structure of your new objects.

Then run `rspec` in this directory to see if your Puppy meets the spec.

The spec below is encoded into RSpec test suites in `spec/deck_spec.rb` and `spec/playing_card_deck_spec.rb`.

# Spec

## PlayingCard

**PlayingCards have a suit and a value**

Set and get the suit and value of a PlayingCard with the `#suit` and `#value` accessors. To see what a playing card is in plain English, call `#inspect`.

## Deck

**Decks are made of cards**

A Deck has an array of cards. Cards can be any Ruby object. In the deck spec, we make a deck of 100 cards, represented by numbers from 1 to 100.

**Decks can be shuffled**

Calling `#shuffle` on a deck reorders the cards in it randomly.

**Decks deal a card at a time**

Decks deal one card with the `#deal` method. The card dealt is removed from the deck.

**Decks raise an error when there are no cards left to deal**

If you call `#deal` and no cards remain in the Deck, the Deck raises an `OutOfCardsError`.

## PlayingCardDeck

**PlayingCardDecks are Decks**

Because they inherit from Decks, PlayingCardDecks can do everything a Deck can, including shuffling and dealing.

**PlayingCardDecks have 52 PlayingCards**

There is one card of every suit and value in a PlayingCardDeck.

The suits in a PlayingCardDeck are: `clubs, spades, hearts, diamonds`

The values in a PlayingCardDeck are: `2, 3, 4, 5, 6, 7, 8, 9, 10, J, Q, K, A`

**PlayingCardDecks can deal multiple poker hands at once**

Calling the `#deal_poker_hands` method deals a given number of poker hands. It returns an array of hands. Each hand is an array of five PlayingCards drawn from the deck.
