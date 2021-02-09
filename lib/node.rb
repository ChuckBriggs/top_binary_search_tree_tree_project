# frozen_string_literal: true
#require 'pry'; binding.pry #rubocop:disable all

require_relative 'node'

# node within a binary search tree
class Node
  include Comparable

  attr_accessor :left_child, :right_child

  def initialize(value = nil, left_child = nil, right_child = nil)
    @value = value
    @left_child = left_child
    @right_child = right_child
  end

  def <=>(other_node)
    value <=> other_node.value
  end
end
