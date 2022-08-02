# Mad libs are a simple game where you create a story template with blanks for
# words. You, or another player, then construct a list of words and place them
# into the story, creating an often silly or funny story as a result.

# Create a simple mad-lib program that prompts for a noun, a verb, an adverb,
# and an adjective and injects those into a story that you create.

def get_a_word(type)
  print "Enter a #{type}: "
  gets.chomp
end

noun = get_a_word('noun')
verb = get_a_word('verb')
adjective = get_a_word('adjective')
adverb = get_a_word('adverb')

puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"