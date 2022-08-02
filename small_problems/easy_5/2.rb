def time_of_day(minutes_before_or_after)
  hours, minutes = minutes_before_or_after.abs.divmod(60)
  hours = hours % 24 if hours >= 24
  if minutes_before_or_after < 0
    hours = 23 - hours
    minutes = 60 - minutes
  end
  "#{convert_time_to_string(hours)}:#{convert_time_to_string(minutes)}"
end

def convert_time_to_string(time)
  time < 10 ? time.to_s.prepend('0') : time.to_s
end

p time_of_day(0)
p time_of_day(-3)
p time_of_day(35)
p time_of_day(-1437)
p time_of_day(3000)
p time_of_day(800)
p time_of_day(-4231)