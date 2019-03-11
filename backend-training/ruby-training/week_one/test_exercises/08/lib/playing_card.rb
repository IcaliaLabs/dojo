class PlayingCard
  attr_accessor :suit, :value

  def inspect
    "#{value.to_s} of #{suit.to_s}"
  end
end
