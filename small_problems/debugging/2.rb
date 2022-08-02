def shout_out_to(name)
  name_chars = name.chars.map! { |c| c.upcase }
  name = name_chars.join

  # or name.upcase!
  # name.upcase!
  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'