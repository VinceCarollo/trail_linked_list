require_relative 'node'
require 'pry'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(surname)
    if @head.nil?
      @head = Node.new(surname)
    else
      pointer = @head
      until pointer.next_node.nil?
        pointer = pointer.next_node
      end
      pointer.next_node = Node.new(surname)
    end
  end

  def count
    count = 0
    count += 1 if !@head.nil?
    pointer = @head
    until pointer.next_node.nil?
      count += 1
      pointer = pointer.next_node
    end
    count
  end

  def to_string
    families = []
    families << "The #{@head.surname} family" if !@head.nil?
    pointer = @head
    until pointer.next_node.nil?
      families << ", followed by the #{pointer.next_node.surname} family"
      pointer = pointer.next_node
    end
    families.join
  end

end
