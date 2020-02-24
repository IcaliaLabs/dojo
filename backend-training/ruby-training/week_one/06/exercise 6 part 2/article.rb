# frozen_string_literal: true

class Article
  attr_accessor :rank, :title, :score

  def initialize(rank, title)
    @rank = rank
    @title = title
  end
end
