# If you take a number like 735291, and rotate it to the left, you get 352917.
# If you now keep the first digit fixed in place, and rotate the remaining
# digits, you get 329175. Keep the first 2 digits fixed in place and rotate
# again to 321759. Keep the first 3 digits fixed in place and rotate again to
# get 321597. Finally, keep the first 4 digits fixed in place and rotate the
# final 2 digits to get 321579. The resulting number is called the maximum
# rotation of the original number.

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

def max_rotation(number)
  digits_counter = number.to_s.size
  while digits_counter > 1
    number = rotate_rightmost_digits(number, digits_counter)
    digits_counter -= 1
  end
  number
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845