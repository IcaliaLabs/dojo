# frozen_string_literal: true

# Class Movie
class Movie
  attr_accessor :score, :name, :sales

  def initialize(score, name, sales)
    @score = score
    @name = name
    @sales = sales
  end

  def sanitize_sales
    @sales.delete('$M')
  end

  def sales_as_number
    sanitize_sales.to_f * 1_000_000
  end
end
