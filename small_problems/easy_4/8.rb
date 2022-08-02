NUMBERS = {
  '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
  '6' => 6, '7' => 7, '8' => 8, '9' => 9, '0' => 0
}

def character_to_integer(char)
  NUMBERS[char]
end

def char_is_not_a_number?(char)
  !NUMBERS.include?(char)
end

def negative_sign?(char)
  char == '-'
end

def char_array_to_integer(chars)
  total = 0
  numbers = chars.map { |char| character_to_integer(char)}
  numbers.each { |number| total = total * 10 + number }
  total
end

def string_to_signed_integer(string)
  char_array = string.chars
  first_char = char_array.shift if char_is_not_a_number?(char_array[0])
  if negative_sign?(first_char)
    -char_array_to_integer(char_array)
  else
    char_array_to_integer(char_array)
  end
end

puts string_to_signed_integer('+1234')
puts string_to_signed_integer('5678')
puts string_to_signed_integer('-588')