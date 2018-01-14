# frozen_string_literal: true

require_relative '../lib/binary_search'

# rubocop:disable Metrics/BlockLength
describe BinarySearchTree do
  it 'must find the number 5' do
    test = BinarySearchTree.new
    test.insert(5)
    test.search(5).must_equal true
  end

  it 'must find the number 1' do
    test = BinarySearchTree.new
    test.insert(5)
    test.insert(1)
    test.search(1).must_equal true
  end

  it 'must find the number 10' do
    test = BinarySearchTree.new
    test.insert(5)
    test.insert(10)
    test.search(10).must_equal true
  end

  it 'must not find 5 in list' do
    test = BinarySearchTree.new
    test.insert(10)
    test.insert(2)
    test.insert(6)
    test.search(5).must_equal false
  end

  it 'must not find 5 in list' do
    test = BinarySearchTree.new
    test.insert(1)
    test.insert(2)
    test.insert(3)
    test.search(5).must_equal false
  end

  it 'must find 15 in list' do
    test = BinarySearchTree.new
    test.insert(1)
    test.insert(2)
    test.insert(30)
    test.insert(3)
    test.insert(6)
    test.insert(4)
    test.insert(7)
    test.insert(15)
    test.insert(5)
    test.search(15).must_equal true
  end
end
# rubocop:enable Metrics/BlockLength
