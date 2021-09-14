require_relative 'lib/linked_list'

list = LinkedList.new
puts 'Test append'
list.append(5)
list.append(6)
puts list

puts 'prepend 2'
list.prepend(2)
puts list
puts 'Test #size'
puts list.size

puts 'Test head'
p list.head

puts 'Test tail'
p list.tail

puts 'Node at index 2'
puts list
p list.at(2)

puts 'Node at index 7'
p list.at(7)

puts 'pop'
puts list
p list.pop
puts list

puts 'Contain 5?'
p list.contain?(5)

puts 'Contain 7?'
p list.contain?(7)

puts 'Find 5'
p list.find(5)

puts 'Find 7'
p list.find(7)

puts 'Insert 3 at index 0'
list.insert_at(3, 0)
puts list
puts 'Insert 7 at index 2'
list.insert_at(7, 2)
puts list

puts 'Remove at index 0'
list.remove_at(0)
puts list

puts 'Remove at index 1'
list.remove_at(1)
puts list

puts 'Remove at index 1'
list.remove_at(1)
puts list
