require 'rspec/autorun'
require '../fizzbuzz_game.rb'

describe FizzBuzzGame do

    describe ".is_it_fizz?" do
        it "should return true if the number is divisible by 3" do
            expect(FizzBuzzGame.is_it_fizz?(6)).to eq(true)
        end

    end

    describe ".is_it_buzz?" do
        it "should return true if the number is divisible by 5" do
            expect(FizzBuzzGame.is_it_buzz?(20)).to eq(true)
        end
    end

    describe ".is_it_fizzbuzz?" do
        it "should return true if the number is divisible by 5 and 3" do
            expect(FizzBuzzGame.is_it_fizzbuzz?(15)).to eq(true)
        end
    end
    
    describe ".game" do
        it "should return FizzBuzz message because the number accomplish the two criteria" do
            expect(FizzBuzzGame.game(15)).to eq("FizzBuzz")
        end

        it "should return Fizz message because  the number is divisble by 3" do
            expect(FizzBuzzGame.game(9)).to eq("Fizz")
        end

        it "should return Fizz message because the number has a 3" do
            expect(FizzBuzzGame.game(13)).to eq("Fizz")
        end

        it "should return Buzz message because the number is divisble by 5" do
            expect(FizzBuzzGame.game(25)).to eq("Buzz")
        end

        it "should return Buzz message because the number has a 5" do
            expect(FizzBuzzGame.game(152)).to eq("Buzz")
        end

        it "should return the number because the number doesn't accomplish any criteria" do
            expect(FizzBuzzGame.game(77)).to eq(77)
        end
    end
end 