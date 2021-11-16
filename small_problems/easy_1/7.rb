def stringy(length)
  output = ''
  i = 0
  while i < length do 
    if output[i-1] == '0' || output[i-1] == nil
      output.concat("1")
    else 
      output.concat("0")
    end 
    i += 1
  end 
  output
end 

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'