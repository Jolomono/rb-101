# figure out the total age of just the male members of the family

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

male_ages_sum = 0

munsters.each do |name, info|
  if info["gender"] == "male"
    male_ages_sum += info["age"]
  end
end

# could also do #each_value do |info| to iterate just over key/val pairs because
#  we aren't using the the name keys at all

p male_ages_sum