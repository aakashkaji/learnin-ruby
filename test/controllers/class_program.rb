class ClassProgram

  attr_accessor :title, :author, :pages



end

book1 = ClassProgram.new()
book1.title = "first book"
book1.author = "generic"
book1.pages = 102

puts book1.pages

# this block of codes goes on infinite
# begin
#
#   # using raise to create an exception
#   raise 'Exception Created!'
#
#   puts 'After Exception'
#
#     # using Rescue method
# rescue
#   puts 'Finally Saved!'
#
# # using retry statement
#   retry
# end
