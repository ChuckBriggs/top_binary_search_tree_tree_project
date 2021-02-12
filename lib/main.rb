# frozen_string_literal: true
#require 'pry'; binding.pry #rubocop:disable all

require_relative 'tree'

# tree = Tree.new([10, 20, 30, 40, 50, 15])
tree = Tree.new([1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324])

tree.pretty_print
p tree.balanced?
# tree.insert(2)
# tree.delete(6345)
tree.delete(23)
# tree.delete(5)
tree.delete(9)
tree.pretty_print
p tree.balanced?

tree.rebalance
tree.pretty_print
p tree.balanced?


# puts "height:\t#{tree.height}"

# p tree.depth(tree.find(324))

# p tree.find(67)
# puts "inorder:\t#{tree.inorder}"
# puts "preorder:\t#{tree.preorder}"
# puts "postorder:\t#{tree.postorder}"
# i = 0
# while i < arr.length
#   puts arr[i].data
#   i += 1
# end
