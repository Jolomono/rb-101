# input two arguments, a positive integer and a boolean
# output a number of the calculated bonus
# if boolean is true, bonus is salary / 2
# if boolean is false, bonus is 0

def calculate_bonus(salary, bonus)
  return 0 if bonus == false
  salary / 2
end 

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000