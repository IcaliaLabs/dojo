# frozen_string_literal: true

class WithoutMaxMin
  def sum_without_max_min(arr)
    sum_min_max = arr.minmax.sum
    arr.sum - sum_min_max
  end
end
