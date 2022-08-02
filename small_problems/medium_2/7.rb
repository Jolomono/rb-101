# Write a method that returns the number of Friday the 13ths in the year given
# by an argument. You may assume that the year is greater than 1752 (when the
# United Kingdom adopted the modern Gregorian Calendar) and that it will remain
# in use for the foreseeable future.

require 'date'

def friday_13th(year)
  total = 0
  1.upto(12) do |month|
    # p Date.new(year, month, 13)
    total += 1 if Date.new(year, month, 13).friday?
  end
  total
end

def most_unlucky_year(start_year, end_year)
  unlucky_max = 0
  unlucky_year = 0
  start_year.upto(end_year) do |year|
    next if year == 1582
    if friday_13th(year) >= unlucky_max
      unlucky_max = friday_13th(year)
      unlucky_year = year
      puts "new unluckiest year: "
      puts "#{year} with #{unlucky_max}."
    end
  end
  unlucky_year
end

puts most_unlucky_year(0, 2022)



# p friday_13th(2015) == 3
# p friday_13th(1986) == 1
# p friday_13th(2019) == 2

