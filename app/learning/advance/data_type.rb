class DataType
end

# Ruby array datatypes
#
ls = [1,2,3,4,5,"aakash"]
puts ls

# check wheter ls is empty or nopt
puts ls.empty?

puts ls.include?("aakash")

puts ls.take(2) # fetch first two elements from array
puts ls.fetch(6, false) # if index exist then return value else return default value

ls.push(8) # add 8 at end of array
ls<<12 # similar as above
ls.unshift(0) # added at the beginning
ls.insert(3, "apple") # added at 3 position

# syntax for decleration of array

words = %w[first second third fourth fifth sixth]

puts words
str = ""
words.reverse_each{|w| str += "#{w} "}

puts str


def inverse(x)
  raise ArgumentError, 'Argument is not numeric' unless x.is_a? Numeric
  1.0 / x
end
puts inverse(2)
puts "works"


# examples of present
age = 23
person = (13...19).include?(age) ? "teenager" : "not a teenager"
puts person # => "not a teenager"