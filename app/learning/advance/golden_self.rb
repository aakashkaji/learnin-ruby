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


