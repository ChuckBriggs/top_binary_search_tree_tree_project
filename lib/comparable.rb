# frozen_string_literal: true
#require 'pry'; binding.pry #rubocop:disable all

# node within a binary search tree
module Comparable
  def compare(other_node)
    self.value == other_node.value
  end
end
