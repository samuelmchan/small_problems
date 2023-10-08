def after_midnight(str)
  hour = str[0..1].to_i
  minute = str[3..4].to_i
  minutes = 60 * hour + minute
  while minutes >= 1440
    minutes -= 1440
  end
  minutes
end

def before_midnight(str)
  hour = str[0..1].to_i
  minute = str[3..4].to_i
  minutes = -(60 * hour + minute)
  while minutes < 0
    minutes += 1440
  end
  minutes
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0