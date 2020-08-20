# frozen_string_literal: true

require_relative 'rspec'
require_relative 'generator'

first_name = 'Jigarius'
last_name  = 'Caesar'
code       = 'CAJI202002196'

generator = Generator.new(first_name, last_name, code)

it 'returns combined chars from first name and last name' do
  expect(generator.generate_id).to eq('CAJI202002196')
end

it 'returns the first two chars of the first name' do
  expect(generator.first_chars).to eq('x')
end

it 'returns the first two chars of the last name' do
  expect(generator.second_chars).to eq('JI')
end
