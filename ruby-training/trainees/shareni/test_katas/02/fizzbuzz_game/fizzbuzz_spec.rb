require 'rspec'
require './fizzbuzz'

describe "FizzBuzz" do
    describe "#play" do
        it "returns Fizz if the number is divisible by 3" do
            game = FizzBuzz.new
            result = game.play(6)
            expect(result).to eq("Fizz")
        end

        it "returns Buzz if the number is divisible by 5" do
            game = FizzBuzz.new
            result = game.play(10)
            expect(result).to eq("Buzz")
        end 

        it "returns FizzBuzz if the number is divisible by 3 and 5" do
           game = FizzBuzz.new
           result = game.play(15)
           expect(result).to eq("FizzBuzz") 
        end

        it "returns the same number if it's not divisible by 3, 5 or both" do
            game = FizzBuzz.new
            result = game.play(8)
            expect(result).to eq(8)
        end
    end
end