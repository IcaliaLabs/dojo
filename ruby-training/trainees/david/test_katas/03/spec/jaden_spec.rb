require 'rspec/autorun'
require_relative '../jaden'

describe Jaden do
    describe ".to_jaden" do
        it "should return a string with all words capitalized" do
            expect(Jaden.to_jaden("Hi my name is jaden.")).to eq("Hi My Name Is Jaden.")
        end
    end
end