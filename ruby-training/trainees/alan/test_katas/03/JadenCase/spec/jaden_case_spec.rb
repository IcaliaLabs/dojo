require "rspec/autorun"
require_relative "../jaden_case.rb"

describe JadenCase do

    describe ".array_of_capitalize_words" do
        it "should return an array of capitalized words" do
            expect(JadenCase.array_of_capitalize_words("Hello, there.")).to eq(["Hello,","There."])
        end
    end

    describe ".jadenify" do
        it "hould return the sentence in Jaden Case" do
            expect(JadenCase.jadenify("I'm in the corner :(.")).to eq("I'm In The Corner :(.")
        end
    end
end