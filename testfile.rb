
class Calculator
  attr_accessor :x, :y

  puts 'an example of how the calculator class works you call the method outside the class.'
  def initialize(num1, num2)
    @x = num1
    @y = num2
  end

  def add
    puts x + y
  end

  def sub
    puts x - y
  end

  def mul   
    puts x * y
  end

  def division
    puts x / y
  end
end