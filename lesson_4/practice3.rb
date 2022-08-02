ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# Remove people with age 100 and greater

ages.reject! do |name, age|
  age >= 100
end

p ages