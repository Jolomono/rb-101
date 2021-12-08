number_array = []

puts "==> Enter the 1st number: "
number_array << gets.to_i

puts "==> Enter the 2nd number: "
number_array << gets.to_i

puts "==> Enter the 3rd number: "
number_array << gets.to_i

puts "==> Enter the 4th number: "
number_array << gets.to_i

puts "==> Enter the 5th number: "
number_array << gets.to_i

puts "==> Enter the last number: "
number_to_check = gets.to_i

if number_array.include?(number_to_check)
  puts "The number #{number_to_check} appears in #{number_array}."
else
  puts "The number #{number_to_check} does not appear in #{number_array}."
end
