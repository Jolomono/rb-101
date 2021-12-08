# Write a program that asks the user to enter an integer greater than 0, then
# asks if the user wants to determine the sum or product of all numbers between
# 1 and the entered integer.

puts ">> Please enter an integer greater than 0: "
user_number = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
input = gets.chomp

total = 1
current_number = 1

if input == 's'
  loop do
    current_number += 1
    total += current_number
    break if current_number == user_number
    end
  puts "The sum of the integers between 1 and #{user_number} is #{total}."
elsif input == 'p'
  loop do
    current_number += 1
    total *= current_number
    break if current_number == user_number
    end
  puts "The product of the integers between 1 and #{user_number} is #{total}."
else
  puts "You didn't type an s or a p, go sit in the corner."
end

