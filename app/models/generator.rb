# frozen_string_literal: true

class Generator
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
  end

  def generate_id
    [
      first_chars,
      second_chars
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
end
