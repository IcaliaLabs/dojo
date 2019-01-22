require 'rspec/autorun'
require '../fizzbuzz_game.rb'

describe FizzBuzzGame do

    describe ".it_is_fizz?" do
        it "should return true if the number is divisible by 3" do
            expect(FizzBuzzGame.it_is_fizz?(6)).to eq(true)
        end

    end

    describe ".it_is_buzz?" do
        it "should return true if the number is divisible by 5" do
            expect(FizzBuzzGame.it_is_buzz?(20)).to eq(true)
        end
    end

    describe ".it_is_fizzbuzz?" do
        it "should return true if the number is divisible by 5 and 3" do
            expect(FizzBuzzGame.it_is_fizzbuzz?(15)).to eq(true)
        end
    end

    describe "it_has_a_3?" do
        it "should return true if the number has a 3" do
            expect(FizzBuzzGame.it_has_a_3? (531)).to eq(true)
        end
    end

    describe "it_has_a_5?" do
        it "should return true if the number has a 5" do
            expect(FizzBuzzGame.it_has_a_5? (1531)).to eq(true)
        end
    end
end