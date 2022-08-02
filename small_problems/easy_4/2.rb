def century(year)
  century = year / 100.0
  century = century.ceil
  century = century.to_s

  ones_digit = century[century.length - 1]
  if century.length > 1
    tens_digit = century[century.length - 2]
  else
    tens_digit = '0'
  end

  return century + 'th' if tens_digit == '1'

  century + case ones_digit
            when '1' then 'st'
            when '2' then 'nd'
            when '3' then 'rd'
            else 'th'
            end
end

p century(2000)
p century(2001)
p century(1965)
p century(256)
p century(5)
p century(10103)
p century(1052)
p century(1127)
p century(11201)