class Product

  attr_reader :title, :cost, :reliability
  attr_accessor :reviews

  def initialize(title, cost)
    @title = title
    @cost = cost
    @reviews = []
  end

  def read_product_info
    "#{title} currently costs #{cost}"
  end

  def add_review(review)
    @reviews << review
  end

  def read_reviews
    if @reviews.length > 10
      @reliability = "strong"
    elsif @reviews.length > 5
      @reliability = "okay"
    else
      @reliability = "weak"
    end
  end

end
