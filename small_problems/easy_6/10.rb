# Right Triangles

# Write a method that takes a positive integer, n, as an argument, and displays
# a right triangle whose sides each have n stars. The hypotenuse of the triangle
# (the diagonal side in the images below) should have one end at the lower-left
# of the triangle, and the other end at the upper-right.

# Given a positive integer
# Ouput: a triangle of *'s
# Create number of lines to equal number given
# for each line, create a string of spaces and *'s
# then print that line
# Set stars at 1 to start and increment by 1 each new line
# Set spaces to number given minus 1 and increment by -1 each new line

# spaces.times {line_string += " " }
# stars.times {line_string += "*" }
#   CAN BE SIMPLIFIED
# puts (' ' * spaces) + ('*' * stars)

def triangle(lines)
  stars = 1
  spaces = size - 1
  lines.times do |line|
    line_string = ''
    spaces.times {line_string += " " }
    stars.times {line_string += "*" }
    puts line_string
    stars += 1
    spaces -= 1
  end
end

triangle(9)
