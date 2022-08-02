# Write a method that can rotate the last n digits of a number
# ex: rotate_rightmost_digits(735291, 3) == 735912
# Rotating just 1 digit results in the original number being returned

def rotate_array(array)
  new_array = array.dup
  front_element = new_array.slice!(0)
  new_array << front_element
end

def rotate_rightmost_digits(number, digits_to_rotate)
  num_array = number.to_s.chars
  index = -digits_to_rotate
  swap_arr = num_array.slice!(index, digits_to_rotate)
  num_array += rotate_array(swap_arr)
  num_array.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917