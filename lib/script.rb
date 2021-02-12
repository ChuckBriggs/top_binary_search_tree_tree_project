# frozen_string_literal: true
#require 'pry'; binding.pry #rubocop:disable all

# Write a simple driver script that does the following:

# 1. Create a binary search tree from an array of random numbers (`Array.new(15) { rand(1..100) }`)
# 2. Confirm that the tree is balanced by calling `#balanced?`
# 3. Print out all elements in level, pre, post, and in order
# 4. try to unbalance the tree by adding several numbers > 100
# 5. Confirm that the tree is unbalanced by calling `#balanced?`
# 6. Balance the tree by calling `#rebalance`
# 7. Confirm that the tree is balanced by calling `#balanced?`
# 8. Print out all elements in level, pre, post, and in order

require_relative 'tree'

tree = Tree.new(Array.new(15) { rand(1..100) })
tree.pretty_print
puts "Balanced:\t#{tree.balanced?}"
puts "Level-order:\t#{tree.level_order}"
puts "Pre-order:\t#{tree.preorder}"
puts "Post-order:\t#{tree.postorder}"
puts "In-order:\t#{tree.inorder}"

tree.insert(205)
tree.insert(201)
tree.insert(204)
tree.insert(202)
tree.insert(203)

tree.pretty_print
puts "Balanced:\t#{tree.balanced?}"
puts "Level-order:\t#{tree.level_order}"
puts "Pre-order:\t#{tree.preorder}"
puts "Post-order:\t#{tree.postorder}"
puts "In-order:\t#{tree.inorder}"

tree.rebalance

tree.pretty_print
puts "Balanced:\t#{tree.balanced?}"
puts "Level-order:\t#{tree.level_order}"
puts "Pre-order:\t#{tree.preorder}"
puts "Post-order:\t#{tree.postorder}"
puts "In-order:\t#{tree.inorder}"

# # tree = Tree.new([10, 20, 30, 40, 50, 15])
# tree = Tree.new([1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324])

# tree.pretty_print
# p tree.balanced?
# # tree.insert(2)
# # tree.delete(6345)
# tree.delete(23)
# # tree.delete(5)
# tree.delete(9)
# tree.pretty_print
# p tree.balanced?

# tree.rebalance
# tree.pretty_print
# p tree.balanced?


# # puts "height:\t#{tree.height}"

# # p tree.depth(tree.find(324))

# # p tree.find(67)
# # puts "inorder:\t#{tree.inorder}"
# # puts "preorder:\t#{tree.preorder}"
# # puts "postorder:\t#{tree.postorder}"
# # i = 0
# # while i < arr.length
# #   puts arr[i].data
# #   i += 1
# # end
