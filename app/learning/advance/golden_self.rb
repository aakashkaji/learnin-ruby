class GoldenSelf
end

module Aakash

  def single

    puts "hellow my name is #{self.name}"
  end
end

class Person

  include Aakash
  attr_accessor :name
  def initialize(name)
    @name = name
  end


  def full_name
    self
  end
end

obj = Person.new('Aakash dev oops' )

obj.single

puts obj.full_name.name # or s = obj.full_name then call s.name

#puts s.name

class Person1

  include Aakash
  attr_accessor :name

  @@crowd = 0

  def initialize(name)
    @name = name
    @@crowd += 1
  end

  def existential_crisis
    self
  end

  def self.population  # this is our class method and @@crowd is class variable
    @@crowd
  end
end

a = Person1.new('apple')
b = Person1.new('mango')

puts Person1.population

puts a.existential_crisis

# No. of different ways define class method
#

# Way 1
class Foo
  def self.bar
    puts 'class method'
  end
end

# Way 2
class Foo
  class << self
    def bar
      puts 'class method'
    end
  end
end

# Way 3
class Foo; end
def Foo.bar
  puts 'class method'
end
