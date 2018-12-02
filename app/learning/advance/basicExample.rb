class BasicExample

  attr_accessor :aakash # this work as getter and setter types

  def initialize(length, breadth)

    # this is ruby constructor method
    # @length , @breadth is instance method which is available for all method of class
    @length = length
    @breadth = breadth
    get_length  # here we call method get_length which initialize the class variable

  end

  def area_of_rectangle
    return @length * @breadth
  end

  def perimeter_of_rectangle
    return 2 * (@length + @breadth)
  end

  def get_length
    # @@var are class variable

    @@var = 10
    @@var2 = 5

  end

  def class_variable
    return @@var + @@var2
  end

end


obj1 = BasicExample.new(4,5)

puts obj1.area_of_rectangle

puts obj1.perimeter_of_rectangle

puts obj1.class_variable