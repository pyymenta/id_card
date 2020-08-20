# frozen_string_literal: true

require_relative 'generator'

def expect(actual, expected)
  raise("#{actual} != #{expected}") unless actual == expected

  puts '.'
end

first_name = 'Jigarius'
last_name  = 'Caesar'
code       = 'CAJI202002196'

generator = Generator.new(first_name, last_name, code)


expect(generator.generate_id, 'CAJI202002196')
expect(generator.first_chars, 'CA')
expect(generator.second_chars, 'JI')
