class Program
end


# Local variables
# Class variables
puts("hellow world")

a = 4
if a >= 18
  puts "You are eligible to vote."
else
  puts "You are not eligible to vote."
end

if a >= 7
  puts "if block is executing"
elsif a < 2

  puts "elsif block is executing"
else
  puts "else method is executing"
end


# when
day = "Tuesday"

case day
when "Tuesday"
  puts 'Wear Red or Orange'
when "Wednesday"
  puts 'Wear Green'
when "Thursday"
  puts 'Wear Yellow'
when "Friday"
  puts 'Wear White'
when "Saturday"
  puts 'Wear Black'
else
  puts "Wear Any color"
end


# ruby for loop syntax

# types of for loop execute in ruby
c = 10
for i in 1...c do
  puts i
end
# 2nd types
puts "second types of for loop method"
(1..c).each do |i|
  puts i
end

# 3rd types
c.times do
  puts "akki"
end

ls = ["apple",3,4,8]

for i in ls do
  puts i
end

#  or
ls.each do |i|
  puts i
end


# while loop
#
x = 4
while x >= 0
  puts x
  x -=1
end

# do while loop
#
loop do
  puts "Checking for answer"
  answer = gets.chomp
  if answer != '5'
    break
  end
end

# until behave like loop
#
i = 4
until i == 10
  print i*10, "\n"
  i += 1
end

# then keyword in ruby

if true then puts "hellow world" end

# Ruby redo statement is used to repeat the current iteration of the loop. The redo statement is executed without evaluating the loop's condition.
#The redo statement is used inside a loop.

i = 0
while(i < 5)   # Prints "012345" instead of "01234"
  puts i
  i += 1
  redo if i == 5
end

# Ruby retry statement is used to repeat the whole loop iteration from the start.
# The retry statement is used inside a loop.
#
=begin
this is used for multi line comment used in ruby
=end


