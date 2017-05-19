# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.
module Basic_calc
  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end
end

module Sqr_root
  def square_root(number)
    Math.sqrt(number)
  end
end

class SimpleCalculator
  include Basic_calc
end

class FancyCalculator
  include Basic_calc
  include Sqr_root
end

class WhizBangCalculator
  include Basic_calc
  include Sqr_root

  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end
  
  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end

end

# Copy your driver code from the previous exercise and more below:

calculator = SimpleCalculator.new
fancy_calc = FancyCalculator.new
whiz_calc = WhizBangCalculator.new

p fancy_calc.square_root(4)
p fancy_calc.subtract(8,3)
p fancy_calc.divide(20,5)
p fancy_calc.multiply(2,5)
p calculator.add(4,3)
p whiz_calc.hypotenuse(4,8)