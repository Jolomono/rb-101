# Ask user for length of room in meters
# Ask user for width of room in meters
# display area of room in square meters and in square feet
# 1 square meter = 10.7639 square feet

puts "Enter the length of the room in meters: "
length = gets.to_f

puts "Enter the width of the room in meters: "
width = gets.to_f

area_meters = (length * width).round(2)
area_feet = (area_meters * 10.7639).round(2)

puts "The area of the room is #{area_meters} " + \
     "square meters (#{area_feet} square feet)."
