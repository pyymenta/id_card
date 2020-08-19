# frozen_string_literal: true

class Generator
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
  end

  def generate_id
    [
      first_chars,
      second_chars,
      joining_date.year,
      month,
      number,
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

  def full_name
    "#{@first_name} #{@last_name}"
  end

  def joining_date
    Time.local(2020, 2)
  end

  def month
    sprintf("%02d", joining_date.month)
  end

  def number
    database.dig(joining_date.year, joining_date.month, full_name)
  end

  def database
    {
      2020 => {
        2 => {
          "Jigarius Caesar" => 19
        }
      }
    }
  end
end
