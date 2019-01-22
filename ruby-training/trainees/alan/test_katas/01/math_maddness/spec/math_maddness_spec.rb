require 'rspec/autorun'

class Aritmetic_operations
    
    def self.add(first_number, second_number)
       first_number +  second_number
    end
end
describe Aritmetic_operations do
    describe "#add" do
        it "Sum two numbers and the result is equal to 16" do
             calculus = Aritmetic_operations.add(12, 4)
            expect(calculus).to eq(16)
        end
    end
end