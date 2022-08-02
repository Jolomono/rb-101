NUMBERS_AS_CHARACTERS = {
  1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5',
  6 => '6', 7 => '7', 8 => '8', 9 => '9', 0 => '0'
}

def get_char_of_num(number)
  NUMBERS_AS_CHARACTERS[number]
end

def integer_to_string(number)
  number = number.abs
  result = ''
  while number / 10 != 0
    result.prepend(get_char_of_num(number % 10))
    number /= 10
  end
  result.prepend(get_char_of_num(number % 10))
end

def signed_integer_to_string(number)
  if number < 0
    integer_to_string(number).prepend('-')
  else
    integer_to_string(number)
  end
end

p signed_integer_to_string(+4321)
p signed_integer_to_string(-123)
p signed_integer_to_string(0)
