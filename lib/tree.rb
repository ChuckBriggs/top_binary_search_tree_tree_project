# frozen_string_literal: true
#require 'pry'; binding.pry #rubocop:disable all

require_relative 'node'

# node within a binary search tree
class Tree
  def initialize(arr)
    arr = arr.sort.uniq
    @root = build_tree(arr)
  end

  def build_tree(arr, first = 0, last = arr.length - 1)
    return nil if first > last

    mid = (first + last) / 2
    root = Node.new(arr[mid])
    root.left_child = build_tree(arr, first, mid - 1)
    root.right_child = build_tree(arr, mid + 1, last)
    root
  end

  def insert(root = @root, value)
    return Node.new(value) if root == nil

    if root.data > value
      root.left_child = insert(root.left_child, value)
    elsif root.data < value
      root.right_child = insert(root.right_child, value)
    end
    root
  end

  def delete
    # asdf
  end

  def find
    # asdf
  end

  def level_order
    # asdf
  end

  def inorder
    # asdf
  end

  def preorder
    # asdf
  end

  def postorder
    # asdf
  end

  def height
    # asdf
  end

  def depth
    # asdf
  end

  def balanced?
    # asdf
  end

  def rebalance
    # asdf
  end

  def pretty_print(node = @root, prefix = '', is_left = true)
    pretty_print(node.right_child, "#{prefix}#{is_left ? '│   ' : '    '}", false) if node.right_child
    puts "#{prefix}#{is_left ? '└── ' : '┌── '}#{node.data}"
    pretty_print(node.left_child, "#{prefix}#{is_left ? '    ' : '│   '}", true) if node.left_child
  end 
end
