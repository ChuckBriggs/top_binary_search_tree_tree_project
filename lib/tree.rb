# frozen_string_literal: true
#require 'pry'; binding.pry #rubocop:disable all

require_relative 'node'

# node within a binary search tree
class Tree
  def initialize(arr)
    @root = build_tree(arr.sort.uniq)
  end

  def build_tree
    # asdf
  end

  def insert
    # asdf
  end
end
