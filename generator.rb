# frozen_string_literal: true

class Generator
  def initialize(first_name, last_name, code)
    @first_name = first_name
    @last_name  = last_name
    @code       = code
  end

  def generate_id
    [
      first_chars,
      second_chars,
      numeric_part,
      digit
    ].join
  end

  def first_chars
    first_two_chars(@last_name)
  end

  def second_chars
    first_two_chars(@first_name)
  end

  def first_two_chars(text)
    text.split('').first(2).join.upcase
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

  def month
    sprintf("%02d", joining_date.month)
  end

  def numeric_part
    @code.slice(4, 8)
  end

  def odd_sum
    numeric_part.split("").map.with_index { |number, index| index.odd? ? number.to_i : 0 }.sum
  end
end
