# frozen_string_literal: true
require 'spec_helper'
require_relative '../app/models/generator'

RSpec.describe Generator do
  subject(:generator) { described_class.new(first_name, last_name, code) }

  let!(:first_name) { 'Jigarius' }
  let!(:last_name) { 'Caesar' }
  let!(:code) { 'CAJI202002196' }

  it 'returns combined chars from first name and last name' do
    expect(generator.generate_id).to eq('CAJI202002196')
  end

  it 'returns the first two chars of the first name' do
    expect(generator.first_chars).to eq('CA')
  end

  it 'returns the first two chars of the last name' do
    expect(generator.second_chars).to eq('JI')
  end
end
