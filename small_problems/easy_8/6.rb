# Write a method that takes two arguments: the first is the starting number, and
# the second is the ending number. Print out all numbers between the two number
# s, except if a number is divisible by 3, print "Fizz", if a number is
# divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5,
# print "FizzBuzz".

def fizzbuzz(startnum, endnum)
  results = []
  startnum.upto(endnum) do |num|
    if num % 3 == 0 && num % 5 == 0
      results << "FizzBuzz"
    elsif num % 3 == 0
      results << "Fizz"
    elsif num % 5 == 0
      results << "Buzz"
    else
      results << num
    end
  end
  puts results.join(', ')
end

fizzbuzz(1, 15)