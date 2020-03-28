filename = ARGV.first

puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

$stdin.gets

puts "Opening the file..."
target = open(filename, 'w')

puts "Truncating the file.  Goodbye!"
# Unneeded when using 'w' mode
# target.truncate(0)

puts "Now I'm going to ask you for three lines."

lines = []

for i in (1..3) do
    print "line #{i}: "
    lines.push($stdin.gets.chomp)
end
puts "I'm going to write these to the file."

for line in lines do
    target.write(line, "\n")
end

puts "And finally, we close it."
target.close
