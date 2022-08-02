# Take a rational number (x / y)
# return an array of the denominators of an Egyptianal Fraction representation
#  of that number.
# Set the value as the goal
# Iterate over a list of rational values starting with 1/1 then 1/2, 1/3, 1/4...
# If subtracting that value doesn't make the goal value < 0 then subtract it and
#  add the denominator of that value to the results array
# return the result array

require 'pry'

def egyptian(value)
  result = []
  denominator = 1
  loop do
    fraction = Rational(1, denominator)
    if value - fraction >= 0
      value -= fraction
      result << denominator
    end
    denominator += 1
    break if value == 0
  end
  result
end

def unegyptian(denominators)
  result = 0
  denominators.each do |denominator|
    result += Rational(1, denominator)
  end
  result
end

p egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
p egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
p egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)


