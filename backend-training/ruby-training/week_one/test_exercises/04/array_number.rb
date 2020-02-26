# frozen_string_literal: true

class ArrayNumber
  def array_inverted(number)
    arr = number.to_s.reverse.split(//)
    arr1 = []
    arr.each { |n| arr1 << n.to_i }
    arr1
  end
end
