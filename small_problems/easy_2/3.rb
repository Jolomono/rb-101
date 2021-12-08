# Prompt for bill amount
# Ask for tip percentage
# Display the tip and the total amount of the bill

puts ">> What is the bill? "
bill = gets.to_f

puts ">> What is the tip percentage? "
tip_percent = gets.to_f

tip = (bill * (tip_percent / 100.0)).round(2)
total = (bill + tip).round(2)

puts "The tip is $#{tip}"
puts "The total is $#{total}"
