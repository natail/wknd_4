# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)
module Calculator
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



class SimpleCalculator
  include Calculator
end

class FancyCalculator
  include Calculator

  def square_root(number)
    Math.sqrt(number)
  end

end

# Copy your driver code from the previous exercise below:

calculator = SimpleCalculator.new
fancy_calc = FancyCalculator.new

p fancy_calc.square_root(4)
p fancy_calc.subtract(8,3)
p fancy_calc.divide(20,5)
p fancy_calc.multiply(2,5)
p calculator.add(4,3)
