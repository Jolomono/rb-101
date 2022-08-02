def string_to_integer(string)
  string.reverse!
  digit_modifier = 1
  result = 0
  string.each_char do |char|
    number = digit_modifier * character_to_integer(char)
    result += number
    digit_modifier *= 10
  end
  result
end

def character_to_integer(char)
  case char
  when '1' then 1
  when '2' then 2
  when '3' then 3
  when '4' then 4
  when '5' then 5
  when '6' then 6
  when '7' then 7
  when '8' then 8
  when '9' then 9
  when '0' then 0
  end
end

p string_to_integer('4321')
p string_to_integer('570')