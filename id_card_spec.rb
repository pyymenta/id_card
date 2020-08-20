# frozen_string_literal: true

require_relative 'rspec'
require_relative 'generator'

it 'is valid when match first and second pair of chars and last digit' do
  expect(Generator.new('Jigarius', 'Caesar', 'CAJI202002196').valid?).to eq(true)
end

it 'validates first name' do
  expect(Generator.new('Jxgarius', 'Caesar', 'CAJI202002196').valid?).to eq(false)
end

it 'validates last name' do
  expect(Generator.new('Jigarius', 'Cxesar', 'CAJI202002196').valid?).to eq(false)
end

it 'validates the digit' do
  expect(Generator.new('Jigarius', 'Caesar', 'CAJI20200219X').valid?).to eq(false)
end

it 'returns the first x chars upcased' do
  expect(Generator.new('Jigarius', 'Caesar', 'CAJI202002196').first_chars("Jigarius", 2)).to eq('JI')
end
