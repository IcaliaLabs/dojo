# frozen_string_literal: true

load 'movie.rb'

# Class Report
class Report
  attr_accessor :movies

  def initialize(movies)
    @movies = movies
  end

  def total_sales
    total = 0
    @movies.each do |movie|
      total += movie.sales_as_number
    end
    total
  end

  def average_movie_score
    average = []
    @movies.each do |movie|
      average << "#{movie.name} -> Score: #{movie.score}"
    end
    average
  end
end
