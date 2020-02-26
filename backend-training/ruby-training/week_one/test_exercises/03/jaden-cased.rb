# frozen_string_literal: true

class JadenCasedCapitalized
  def capitalized_cadena(cadena)
    arr = []
    cadena.split.each { |n| arr << n.capitalize }
    arr.join(' ')
  end
end
