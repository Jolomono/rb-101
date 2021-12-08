# Exclusive Or

def xor?(bool1, bool2)
  (bool1 && !bool2) || (!bool1 && bool2)
end

value = xor?(5.even?, 4.even?)
