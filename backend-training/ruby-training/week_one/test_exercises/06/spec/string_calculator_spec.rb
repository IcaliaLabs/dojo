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
  end

  it 'returns the sum if the string number contains numbers and characters ' do
    expect(string_number.int_add('1\n2,3')).to eql 6
  end

  it 'returns the sum if the string number contains delimiter in the begin' do
    expect(string_number.int_add('//;\n1;2')).to eql 3
  end

  it 'returns the sum if the string number contains delimiter in the begin' do
    expect(string_number.int_add('//;\n1;20')).to eql 21
  end

  #   it 'returns an exception Negatives not allowed  ' do
  #     expect(string_number.int_add('1,2,-3')).to raise_error('Negatives not allowed: -3')
  #   end

  it 'returns the sum but the numbers bigger than 1000 should be ignored' do
    expect(string_number.int_add('1,2,3333333,1')).to eql 5
  end
end
