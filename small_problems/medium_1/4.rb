# create an array of bools of size n
# loop over that array n times
# initial denom is set to 1, then increases each loop


def lights(number)
  # set the initial array to bools set to false
  arr = Array.new(number, false)
  denom = 1

  number.times do |loop|
    arr.each_index do |i|
      arr[i] = !arr[i] if (i + 1) % denom == 0
    end
    denom += 1
  end

  result = []

  arr.each_index do |i|
    result << i + 1 if arr[i]
  end
  result
end

p lights(1000)