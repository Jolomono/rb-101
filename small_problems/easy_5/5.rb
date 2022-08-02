ALPHABET = ('a'..'z').to_a

def cleanup(string)
  result = ''
  string.chars do |char|
    if ALPHABET.include?(char)
      result << char
    elsif !result.end_with?(' ')
      result << ' '
    end
  end
  result
end

p cleanup("---what's my +*& line?") == ' what s my line '