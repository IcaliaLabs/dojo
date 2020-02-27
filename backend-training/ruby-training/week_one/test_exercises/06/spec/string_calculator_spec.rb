# frozen_string_literal: true

require 'spec_helper'
require_relative '../string_calculator.rb'

describe 'StringCalculator' do
  let(:string_number) { StringCalculator.new }

  it 'returns 0 if string number is empty' do
    expect(string_number.int_add('')).to eql 0
  end

  it 'returns the number if string number contains 1 number' do
    expect(string_number.int_add('1')).to eql 1
  end

  it 'returns the sum if the string number contains two numbers ' do
    expect(string_number.int_add('1,2')).to eql 3
  end

  it 'returns the sum if the string number contains two numbers or more' do
    expect(string_number.int_add('1, 2, 3, 4')).to eql 10
    expect(string_number.int_add('1, 2, 3, 4, 5')).to eql 15
  end

  it 'returns the sum if the string number contains numbers and characters ' do
    expect(string_number.int_add('1\n2,3')).to eql 6
  end
end
