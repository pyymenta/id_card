# frozen_string_literal: true

class Generator
  def initialize(first_name, last_name, code)
    @first_name = first_name
    @last_name  = last_name
    @code       = code
  end

  def valid?
    first_four_chars = [first_chars(@last_name, 2), first_chars(@first_name, 2)].join

    first_chars(@code, 4) == first_four_chars && first_chars(@code.reverse, 1) == digit.to_s
  end

  def first_chars(text, number)
    text.split('').first(number).join.upcase
  end

  private

  def digit
    absolute_value = (odd_sum - even_sum).abs

    return absolute_value if absolute_value <= 9

    absolute_value % 10
  end

  def even_sum
    numeric_part.split("").map.with_index { |number, index| index.even? ? number.to_i : 0 }.sum
  end

  def numeric_part
    @code.slice(4, 8)
  end

  def odd_sum
    numeric_part.split("").map.with_index { |number, index| index.odd? ? number.to_i : 0 }.sum
  end
end
