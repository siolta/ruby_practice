print "Give me a number: "
number = gets.chomp.to_i

bigger = number * 100.0
puts "A bigger number is #{bigger}."

print "Give me another number: "
another = gets.chomp
number = another.to_f

smaller = number / 100.0
puts "A smaller number is #{smaller}."


puts "I can now make some change for you,"
print "enter your starting value: "
change = gets.chomp.to_f

puts "10% of that value is: #{change / 10.0}"
