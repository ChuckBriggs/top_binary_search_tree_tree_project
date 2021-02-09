# frozen_string_literal: true
#require 'pry'; binding.pry #rubocop:disable all

require_relative 'node'

# node within a binary search tree
class Tree
  def initialize(arr)
    @root = build_tree(arr.sort.uniq)
  end

  # def build_tree(arr)
  #   return nil if arr.empty?

  #   # p arr
  #   mid = (arr.length - 1) / 2
  #   node = Node.new(arr[mid])
  #   if arr[0] < arr[-1]
  #     node.left_child = build_tree(arr[0..mid-1])
  #     node.right_child = build_tree(arr[mid+1..-1])
  #   end
  #   node
  # end
  def build_tree(arr)
    return nil if arr.empty?

    p arr
    mid = (arr.length - 1) / 2
    Node.new(arr[mid], build_tree(arr[0, mid]), build_tree(arr[(mid + 1)..-1]))
  end
end
