flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Find the index of the first name that starts with "Be"

be_index = flintstones.index do |name|
  name.start_with?("Be")
end

p be_index