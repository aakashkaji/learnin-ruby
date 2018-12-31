class TestAakash

  def initialize
    @value = 0
  end


  def increment_a
    for i in [1,2,3,4,5,6]
      puts i

      @value +i
    end
    puts @value
  end
end

c = TestAakash.new
c.increment_a



s = [{:id => 1, :criteria_order => 2}, {:id => 2, :criteria_order => 3}, {:id => 3, :criteria_order => 4}]


for a in s
  puts a
end