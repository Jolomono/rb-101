NUMBERS_AS_CHARACTERS = {
  1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5',
  6 => '6', 7 => '7', 8 => '8', 9 => '9', 0 => '0'
}

def integer_to_string(number)
  result = ''
  while number / 10 != 0
    result.prepend(get_char_of_num(number % 10))
    number /= 10
  end
  result.prepend(get_char_of_num(number % 10))
end

def get_char_of_num(number)
  NUMBERS_AS_CHARACTERS[number]
end

p integer_to_string(4321)
p integer_to_string(0)
p integer_to_string(5000)