# frozen_string_literal: true

# Binary Search Tree
class BinarySearchTree
  # Node
  class Node
    def initialize(value, left_child, right_child)
      @value = value
      @left_child = left_child
      @right_child = right_child
    end

    def <<(value)
      if @value.nil?
        @value = value
      elsif value < @value
        left_child << value
      elsif value > @value
        right_child << value
      end
    end

    def include?(value)
      if @value.nil?
        false
      elsif @value == value
        true
      elsif value < @value
        left_child.include? value
      elsif value > @value
        right_child.include? value
      end
    end

    private

    attr_accessor :value

    def right_child
      @right_child ||= Node.new(nil, nil, nil)
    end

    def left_child
      @left_child ||= Node.new(nil, nil, nil)
    end
  end

  def initialize
    @parent = Node.new(nil, nil, nil)
  end

  def insert(value)
    @parent << value
  end

  def search(value)
    @parent.include? value
  end
end
