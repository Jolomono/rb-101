# Write a method that takes an Array of integers as input, multiplies all the
# numbers together, divides the result by the number of entries in the Array,
# and then prints the result rounded to 3 decimal places. Assume the array is
# non-empty.

# Given an array of integers
# return a float rounded to 3 decimal places that is the average
# First iterate over the array multiplying each number together to get the sum
# convert the number of elements in the array to a float
# divide the sum by the number of elements
#

def show_multiplicative_average(array)
  sum = 1
  array.each {|num| sum *= num }
  denom = array.size.to_f
  sprintf("%.3f", sum / denom)
end

p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667