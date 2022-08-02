munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# modify the hash such that each member of the munster family has an additional
#  "age_group" key that has one of three values describing the age group the
#  family member is in (kid, adult, or senior)
# Kid is age 0-17, adult is 18-64, senior is 65+

# Iterate over munsters keys looking at each name hash
# Look at the age value for each name hash
# Add a new key to the current name hash of "age_group"
# Add a new value to "age group" dependent on the age of the current hash
# continue until all name hashes have been processed

munsters.each do |name, hash|
  if hash["age"] < 18
    munsters[name]["age_group"] = "kid"
  elsif hash["age"] < 65
    munsters[name]["age_group"] = "adult"
  else
    munsters[name]["age_group"] = "senior"
  end
end

p munsters