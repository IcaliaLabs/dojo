# frozen_string_literal: true

require 'spec_helper'
require_relative '../game.rb'

describe 'GameFizzBuzz' do
  let(:game) { GameFizzBuzz.new }

  it 'returns Fizz ' do
    expect(game.play_fizzbuzz(9)).to eql 'Fizz'
  end
  it 'returns Buzz ' do
    expect(game.play_fizzbuzz(25)).to eql 'Buzz'
  end
  it 'returns FizzBuzz ' do
    expect(game.play_fizzbuzz(30)).to eql 'FizzBuzz'
  end
  it 'returns the number ' do
    expect(game.play_fizzbuzz(11)).to eql 11.to_s
  end
end
