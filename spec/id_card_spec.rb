# frozen_string_literal: true

require_relative '../app/models/generator'

RSpec.describe Generator do
  subject(:generator) { described_class.new(first_name, last_name) }

  let!(:first_name) { 'Jigarius' }
  let!(:last_name) { 'Caesar' }

  it 'does something' do
    binding.pry; p 'debugging...'
    expect(generator.generate_id).to eq('CAJI')
  end

  it 'returns the first two chars of the first name' do
    expect(generator.first_chars).to eq('CA')
  end

  it 'returns the first two chars of the last name' do
    expect(generator.second_chars).to eq('JI')
  end
end
