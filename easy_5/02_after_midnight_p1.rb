def time_of_day(int)
  hours, minutes = int.divmod(60)
  hour = "%02d" % (hours % 24)
  minute = "%02d" % minutes
  "#{hour}:#{minute}"
end


p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
