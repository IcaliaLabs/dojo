# frozen_string_literal: true

require 'spec_helper'
require_relative '../array_number.rb'

describe 'ArrayNumber' do
  let(:number) { ArrayNumber.new }

  it 'returns Fizz ' do
    expect(number.array_inverted(123)).to eql [3, 2, 1]
  end
end
