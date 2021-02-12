# frozen_string_literal: true
#require 'pry'; binding.pry #rubocop:disable all

require_relative 'tree'

# node1 = Node.new(1)
# node5 = Node.new(5)

# p node5 <=> node1
# tree = Tree.new([1, 3, 5, 7, 9])
tree = Tree.new([1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324])

p tree
tree.pretty_print
# tree.insert(2)