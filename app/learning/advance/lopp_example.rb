class LoppExample
end

x = 5
# until looping examples
until x<= 0 do
  puts x
  x = x-1
end


# while looping examples


y =5

while y>=0
  puts "value of x=#{y}"
  y= y-1
end

puts y


begin
  puts "Do you want to do that again?"
  answer = gets.chomp
end while answer == 'Y'


# for loop exactly work as in python
#
ls = [1,2,3,4,5,6]

for i in ls do
  puts i
end

a=3
unless a>4  # this block executes unless is basically opposite of if
  puts "appappaap#{a}"
end