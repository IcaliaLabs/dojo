# frozen_string_literal: true

require 'spec_helper'
require_relative '../sum_without_max_min.rb'

describe 'WithoutMaxMin' do
  let(:arr) { WithoutMaxMin.new }

  it 'returns the sum ' do
    expect(arr.sum_without_max_min([1, 2, 3, 4])).to eql 8
  end
end
