require 'pry'

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def before_midnight(time_string)
  minutes_before = (get_hours(time_string) * MINUTES_PER_HOUR) + get_minutes(time_string)
  minutes_before = minutes_before % MINUTES_PER_DAY
  result = MINUTES_PER_DAY - minutes_before
  result = 0 if result == MINUTES_PER_DAY
  result
end

def after_midnight(time_string)
  total_minutes = (get_hours(time_string) * MINUTES_PER_HOUR) + get_minutes(time_string)
  total_minutes = total_minutes % MINUTES_PER_DAY if total_minutes >= MINUTES_PER_DAY
  total_minutes
end

def get_hours(time_string)
  time_string.slice(0, 2).to_i
end

def get_minutes(time_string)
  time_string.slice(3,2).to_i
end

p after_midnight('00:00')
p after_midnight('12:34')
p after_midnight('24:00')
p before_midnight('00:00')
p before_midnight('12:34')
p before_midnight('24:00')