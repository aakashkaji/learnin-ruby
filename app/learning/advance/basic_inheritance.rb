class BasicInheritance

end

class Parent_class
  def initialize(name = "aakash")
    @name = name

  end

  def your_name
    return @name
  end

end

class Child < Parent_class

  def your_name
    super()

  end

end

obj = Child.new

puts obj.your_name
