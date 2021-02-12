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

  def insert(value, root = @root)
    return Node.new(value) if root.nil?

    if root.data > value
      root.left_child = insert(value, root.left_child)
    elsif root.data < value
      root.right_child = insert(value, root.right_child)
    end
    root
  end

  def delete(value, root = @root)
    return root if root.nil?

    if root.data > value
      root.left_child = delete(value, root.left_child)
    elsif root.data < value
      root.right_child = delete(value, root.right_child)
    end

    if root.data == value
      if root.left_child.nil?
        root = root.right_child
      elsif root.right_child.nil?
        root = root.left_child
      else
        root.data = min_value(root.right_child)
        root.right_child = delete(root.data, root.right_child)
      end
    end

    root
  end

  def min_value(root)
    min_val = root.data
    while root.left_child
      min_val = root.left_child.data
      root = root.left_child
    end
    min_val
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
