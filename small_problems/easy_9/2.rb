# A double number is a number with an even number of digits whose left-side
# digits are exactly the same as its right-side digits. For example, 44, 3333,
# 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

# Write a method that returns 2 times the number provided as an argument, unless
# the argument is a double number; double numbers should be returned as-is.

# Given an integer
# Return either 2 * the number or the current number if it's a double number
# First determine if the number is a double number
# If the number of digits in the number is odd, it's not one
# If so, return the number
# If not, return 2 * the number

def twice(number)
  double_number?(number) ? number : number * 2
end

def double_number?(number)
  string = number.to_s
  return false if string.length.odd?

  slice_index = (string.length / 2) - 1
  front = string.slice!(0..slice_index)
  return true if front == string
  false
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10