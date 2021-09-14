require_relative 'lib/linked_list'

list = LinkedList.new
puts "Test append"
list.append(5)
list.append(6)
puts list

puts "prepend 2"
list.prepend(2)
puts list
puts "Test #size"
puts list.size

puts "Test head"
p list.head

puts "Test tail"
p list.tail

puts "Node at index 2"
puts list
p list.at(2)

puts "Node at index 7"
p list.at(7)

puts "pop"
puts list
p list.pop
puts list

puts 'Contain 5?'
p list.contain?(5)

puts 'Contain 7?'
p list.contain?(7)