# frozen_string_literal: true
#require 'pry'; binding.pry #rubocop:disable all

require_relative 'node'

# node within a binary search tree
class Node
  include Comparable

  def initialize(value = nil)
    @value = value
    @child_left = nil
    @child_right = nil
  end

  def <=>(other_node)
    value <=> other_node.value
  end
end
