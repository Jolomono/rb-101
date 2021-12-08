greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

# informal_greeting references the original greeting object, so when we mutate the hash value the hash containing it now has the mutated value
