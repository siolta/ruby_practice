# Here's some new strange stuff, remember type it exactly

days = " Mon Tue Wed Thu Fri Sat Sun"
months = "Jan\nFeb\nMar\nApr\nMay\nJun\nJul\nAug"
months_l = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug"]

puts "Here are the days: #{days}"
puts "Here are the months: #{months}"

for month in months_l do
    puts "The month is: #{month}"
end

puts %q{
There's something going on here.
With this weird quote
We'll be able to type as much as we like.
Even 4 lines if we want, or 5, or 6.
}
