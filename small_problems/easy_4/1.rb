def short_long_short(string1, string2)
  # determine longer string
  if string1.length > string2.length
    long = string1
    short = string2
  else
    long = string2
    short = string1
  end

  # return short long short
  short + long + short
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"