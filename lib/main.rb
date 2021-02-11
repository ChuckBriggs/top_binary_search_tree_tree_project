# frozen_string_literal: true
#require 'pry'; binding.pry #rubocop:disable all

require_relative 'tree'

node1 = Node.new(1)
node5 = Node.new(5)

p node5 <=> node1
# tree = Tree.new([0, 1, 2, 3, 4, 6, 7, 8, 9])

# p tree
# tree.insert(2)