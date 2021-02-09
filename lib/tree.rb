# frozen_string_literal: true
#require 'pry'; binding.pry #rubocop:disable all

require_relative 'node'

# node within a binary search tree
class Tree
  def initialize(arr)
    @root = build_tree(arr.sort.uniq)
  end

  def build_tree(arr)
    p arr
    i = (arr.length - 1) / 2
    node = Node.new(arr[i])
    if arr[0] < arr[-1]
      node.child_left = build_tree(arr[0..i-1])
      node.child_right = build_tree(arr[i+1..-1])
    end
    node
  end
end
