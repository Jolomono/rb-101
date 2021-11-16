# take a number and separate its digits by converting to string
# convert the array of number strings back to integers
# add its digits together
# return result

def sum(number)
  number_array = number.to_s.chars
  number_array.map!{|num| num.to_i}
  number_array.sum
end 

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45