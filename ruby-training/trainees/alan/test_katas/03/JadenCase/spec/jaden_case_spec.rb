require "rspec/autorun"
require "../jaden_case.rb"

describe JadenCase do

    describe ".to_word_array" do
        it "should return an array of each word in the sentence" do
            expect(JadenCase.to_array_of_words("Hello, there.")).to eq(["Hello,","there."])
        end
    end
end