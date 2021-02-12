# frozen_string_literal: true
#require 'pry'; binding.pry #rubocop:disable all

require_relative 'node'

# node within a binary search tree
class Tree
  def initialize(arr)
    arr = arr.sort.uniq
    @root = build_tree(arr)
  end

  def build_tree(arr, first = 0, last = arr.length - 1)
    return nil if first > last

    mid = (first + last) / 2
    root = Node.new(arr[mid])
    root.left_child = build_tree(arr, first, mid - 1)
    root.right_child = build_tree(arr, mid + 1, last)
    root
  end

  def insert
    # asdf
  end
end
