# Ask the user for their age
# Ask the user what age they would like to retire

CURRENT_YEAR = Time.now.year

puts "What is your age? "
current_age = gets.to_i

puts "At what age would you like to retire? "
retirement_age = gets.to_i

years_til_retirement = retirement_age - current_age
retirement_year = CURRENT_YEAR + years_til_retirement

puts "It's #{CURRENT_YEAR}. You will retire in #{retirement_year}."
puts "You have only #{years_til_retirement} years of work to go!"