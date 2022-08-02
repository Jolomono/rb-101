def create_row(spaces, stars)
  row = ""
  spaces.times {row << " " }
  stars.times {row << "*" }
  row
end

def diamond(size)
  diamond_arr = []

  row_spaces = 0
  row_stars = size

  # create outer rows while there are row stars to add
  while row_stars >= 1
    current_row = create_row(row_spaces, row_stars)
    # if this is the first row in diamond_arr, add the middle row
    if diamond_arr.size == 0
      diamond_arr.push(current_row)
    # otherwise add this row at the front and the end of the diamond array
    else
      diamond_arr.unshift(current_row)
      diamond_arr.push(current_row)
    end
    row_spaces += 1   # each row (from center) has one more space at the start
    row_stars -= 2    # each row (from center) has two fewer stars in it
  end

  puts diamond_arr
end

diamond(1)

