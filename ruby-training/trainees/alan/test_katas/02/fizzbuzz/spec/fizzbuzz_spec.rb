require 'rspec/autorun'
require '../fizzbuzz_game.rb'

describe FizzBuzzGame do

    describe ".it_is_fizz?" do
        it "should recieve true if the number is a fizz" do
            expect(FizzBuzzGame.it_is_fizz?(6)).to eq(true)
        end

    end
end