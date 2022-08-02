# Write a method that takes a floating point number that represents an angle
# between 0 and 360 degrees and returns a String that represents that angle in
# degrees, minutes and seconds. You should use a degree symbol (°) to represent
# degrees, a single quote (') to represent minutes, and a double quote (") to
# represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

# Given a floating point number
# Output a string that represents that number in degrees, minutes, and seconds
# Create a result string
# determine the degrees
# convert the degrees to a string and add to result
# calculate the minutes
# convert the minutes to a string and add to result
# calculate the seconds and round to nearest int
# convert the sceonds to a string and add to result
# return result

DEGREE = "\xC2\xB0"

def dms(angle)
  deg = angle.to_i
  angle -= deg

  angle *= 60
  min = angle.to_i
  angle -= min

  angle *= 60
  sec = angle.to_i

  deg_string = deg.to_s
  min_string = "%02d" % min.to_s
  sec_string = "%02d" % sec.to_s

  "#{deg_string}#{DEGREE}#{min_string}'#{sec_string}\""
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6)
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")