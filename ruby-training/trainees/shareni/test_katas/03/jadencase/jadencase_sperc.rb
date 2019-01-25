require 'rspec'
require './jadencase'

describe "JadenCase" do
    describe "#convert" do
        it "returns a sentence with the first letter of each word capitalized" do
            raw_sentence = JadenCase.new
            converted_sentence = raw_sentence.convert("Hi, my name is Shareni")
            expect(converted_sentence).to eq("Hi, My Name Is Shareni")
        end

        it "returns each word as sentence case even if there was a capitalized letter" do
            raw_sentence = JadenCase.new
            converted_sentence = raw_sentence.convert("Hi, mY name iS SHARENI")
            expect(converted_sentence).to eq("Hi, My Name Is Shareni")
        end
    end
end