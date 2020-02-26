# frozen_string_literal: true

require 'spec_helper'
require_relative '../math_operations.rb'

describe 'MathOperations' do
  it 'returns a right addition' do
    math = MathOperations.new(2, 3)
    expect(math.addition).to eql 5
  end

  it 'returns a right subtraction' do
    math = MathOperations.new(5, 3)
    expect(math.subtraction).to eql 2
  end

  it 'returns a right multiplication' do
    math = MathOperations.new(10, 3)
    expect(math.multiplication).to eql 30
  end

  it 'returns a right division' do
    math = MathOperations.new(18, 3)
    expect(math.division).to eql 6
  end
end
