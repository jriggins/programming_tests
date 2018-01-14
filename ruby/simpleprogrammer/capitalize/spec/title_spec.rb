# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../lib/title.rb'

describe Title do
  it 'must pass example 1' do
    Title::titleize('i love solving problems and it is fun').must_equal \
      'I Love Solving Problems and It Is Fun'
  end

  it 'must pass example 2' do
    Title::titleize('wHy DoeS A biRd Fly?').must_equal \
      'Why Does a Bird Fly?'
  end
end
