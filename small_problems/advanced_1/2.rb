# create a method that displays an 8 pointed star in an n x n grid
# n is an odd integer, smallest star is 7 x 7

require 'pry'

def star(size)
  star_array = []
  # create the middle row which has size stars
  middle_row = ""
  size.times {middle_row << '*' }
  star_array << middle_row

  star_indexes = {mid_idx: (size - 1) / 2,
                  left_idx: ((size - 1) / 2) - 1,
                  right_idx: ((size - 1) / 2) + 1
  }

  loop do
    row_string = ""
    size.times do |index|
      if star_indexes.each_value.include?(index)
        row_string << '*'
      else
        row_string << ' '
      end
    end

    star_array.push(row_string)
    star_array.unshift(row_string)

    star_indexes[:left_idx] -= 1
    star_indexes[:right_idx] += 1

    break if star_indexes[:left_idx] < 0
  end

  puts star_array
end

star(7)
