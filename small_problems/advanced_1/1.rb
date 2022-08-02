require 'pry'

mad_list = {noun: ['fox', 'dog', 'head', 'leg'],
          adjective: ['quick', 'lazy', 'sleepy', 'ugly'],
          verb: ['jumps', 'lifts', 'bites', 'licks'],
          adverb: ['easily', 'lazily', 'noisily', 'excitedly']
}

File.readlines('madlib.txt').each do |line|
  puts format(line, noun:       mad_list[:noun].sample,
                    verb:       mad_list[:verb].sample,
                    adjective:  mad_list[:adjective].sample,
                    adverb:     mad_list[:adverb].sample)
end

# binding.pry