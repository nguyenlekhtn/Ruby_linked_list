class Node
  attr_accessor :next_node, :value
  def initialize(v = nil)
    @value = v
    @next_node = nil
  end

  def end_point?
    next_node.nil?
  end
end

class LinkedList

  def initialize
    @head = nil
  end
  attr_reader :head

  def append(value)
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
    else
      tail.next_node = new_node
    end
  end

  def prepend(value)
    new_node = Node.new(value)
    new_node.next_node = @head
    @head = new_node
  end

  def size
    total = 0
    node = @head
    until_list_end(0) do |acc, _node|
      acc + 1
    end
  end


  def to_s
    until_list_end("") do |prev, node|
      return "#{prev}( #{node.value} )" if node.next_node.nil?

      "#{prev}( #{node.value} ) -> "
    end
  end

  def at(index)
    node = head
    index.times do
      node = node.next_node
      break if node.nil?
    end
    node
  end

  def tail
    node = head
    until node.end_point?
      node = node.next_node
    end
    node
  end

  def pop
    node = head
    until node.next_node.end_point?
      node = node.next_node
    end

    last_node = node.next_node
    node.next_node = nil

    return last_node
  end

  def contain?(value)
    node = @head
    while !node.nil?
      return true if node.value == value
      node = node.next_node
    end

    false
  end

  def find(value)
    node = @head
    index = 0
    while !node.nil?
      return index if node.value == value
      index += 1
      node = node.next_node
    end

    nil
  end

  private

  def until_list_end(initial, &block)
    acc = initial
    node = head
    until node.nil?
      acc = block.call(acc, node)
      node = node.next_node
    end
    acc
  end
end