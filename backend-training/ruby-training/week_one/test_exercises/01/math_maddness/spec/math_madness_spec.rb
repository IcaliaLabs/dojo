# frozen_string_literal: true

require 'spec_helper'
require_relative '../math_operations.rb'

describe 'MathOperations' do
  let(:math) { MathOperations.new }

  it 'returns a right addition' do
    expect(math.addition(2, 3)).to eql 5
  end

  it 'returns a right subtraction' do
    expect(math.subtraction(5, 3)).to eql 2
  end

  it 'returns a right multiplication' do
    expect(math.multiplication(10, 3)).to eql 30
  end

  it 'returns a right division' do
    expect(math.division(18, 3)).to eql 6
  end
end
