ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# Add up all of the ages from the Munster Family Hash
# Create a value to hold the sum total
# Iterate over Hash adding each value to sum
# Display Sum

sum_of_ages = 0

ages.each_value {|value| sum_of_ages += value}

puts sum_of_ages
