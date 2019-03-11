require 'rspec/autorun'
require_relative '../fizz_buzz'

describe FizzBuzz do
    describe ".play" do
        it "should return fizz if the value is divisible by 3" do
            expect(FizzBuzz.play(3)).to eq("fizz")
        end
        it "should return fizz if the value contains a digit 3" do
            expect(FizzBuzz.play(13)).to eq("fizz")
        end
        it "should return buzz if the value is divisible by 5" do
            expect(FizzBuzz.play(5)).to eq("buzz")
        end
        it "should return buzz if the value contains a digit 5" do
            expect(FizzBuzz.play(52)).to eq("buzz")
        end
        it "should return fizzbuzz if the value is divisible by 3 and 5" do
            expect(FizzBuzz.play(15)).to eq("fizzbuzz")
        end
    end
end