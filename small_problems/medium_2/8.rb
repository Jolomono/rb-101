# A featured number (something unique to this exercise) is an odd number that is
# a multiple of 7, and whose digits occur exactly once each. So, for example, 49
# is a featured number, but 98 is not (it is not odd), 97 is not (it is not a
# multiple of 7), and 133 is not (the digit 3 appears twice).

# Write a method that takes a single integer as an argument, and returns the
# next featured number that is greater than the argument. Return an error
# message if there is no next featured number.

# Given an integer
# Return an Integer that is the next Featured number that is greater than the
#   given number

# Start with the integer after the given integer (n + 1)
# Check each number to see if it's a featured number
# If so, return that number

def featured(number)
  current_number = number + 1
  if current_number > 9_999_999_999
    return "There is no possible number that fulfills those requirements"
  end

  loop do
    if current_number.odd? && multiple_of_7?(current_number) &&
      !dupe_digits?(current_number)
        return current_number
    else
      current_number += 1
    end
  end
end

# true if number is a multiple of 7
def multiple_of_7?(number)
  return number % 7 == 0
end

# true if there are duplicate digits in the number
def dupe_digits?(number)
  string = number.to_s
  string.chars do |char|
    return true if string.count(char) > 1
  end
  false
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements