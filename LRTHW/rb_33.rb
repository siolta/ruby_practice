def repeat(limit)
    i = 0
    arr = []
    while i < limit
        puts "At the top i is #{i}"
        arr.push(i)
        i += 1
        puts "Numbers now: ", arr
        puts "At the bottom i is #{i}"
    end
    return arr
end

numbers = repeat(6)

puts "The numbers_1: "

# remember you can write this 2 other ways?
for num in numbers
    puts num
end

puts "numbers_2: "
numbers.each do |num|
    puts num
end

puts "numbers_3: "
numbers.each {|num| puts num}
