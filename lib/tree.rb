# frozen_string_literal: true
#require 'pry'; binding.pry #rubocop:disable all

require_relative 'node'

# node within a binary search tree
class Tree
  def initialize(arr)
    @root = build_tree(arr)
  end

  def build_tree(arr)
    p 'tree building'
  end
end
