ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# pick out the minimum age from our current Munster family hash

# p ages.min_by {|name, age| age }

# or ages.values creates an array of all of the values, min finds the lowest value

p ages.values.min