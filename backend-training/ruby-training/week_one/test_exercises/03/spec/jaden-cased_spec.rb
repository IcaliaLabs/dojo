# frozen_string_literal: true

require 'spec_helper'
require_relative '../jaden-cased.rb'

describe 'JadenCasedCapitalized' do
  let(:cadena) { JadenCasedCapitalized.new }

  it 'returns Fizz ' do
    expect(cadena.capitalized_cadena('Just stare in the mirror and cry and
      you will be good')).to eql 'Just Stare In The Mirror And Cry And You Will Be Good'
  end
end
