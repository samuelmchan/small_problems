DEGREE = "\xC2\xB0"

def dms(float)
  degrees = float.truncate
  percise_minutes = (float - degrees) * 60
  percise_seconds = (percise_minutes - percise_minutes.truncate) * 60
  seconds = '%02d' % percise_seconds.truncate
  minutes = '%02d' % percise_minutes.truncate
  "#{%(#{degrees}#{DEGREE}#{minutes}'#{seconds}")}"
end





p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")