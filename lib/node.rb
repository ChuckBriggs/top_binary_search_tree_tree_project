# frozen_string_literal: true
#require 'pry'; binding.pry #rubocop:disable all

require_relative 'node'

# node within a binary search tree
class Node
  include Comparable

  def initialize
  end

  def <=>(other_node)
  end
end
