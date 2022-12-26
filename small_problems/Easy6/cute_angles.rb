# Transform a float degree in a string for degree, minutes and seconds.
# a degree has 60 minutes and a minute has 60 seconds.

DEGREE = "\xC2\xB0"

# INPUT: Float that represents an angle between 0 and 360 degrees.
# SET degrees = 0, min_sec
# degrees, min_sec = input.divmod(1)
# # min, sec = (min_sec.round(2)*60)divmod(1)







def dms(angle)
  if !angle.between?(0, 360)
    angle = angle.divmod(360)[1]
  end
  angle = angle
  degree, min_sec = angle.divmod(1)
  min, sec = (min_sec.round(4)*60).divmod(1)
  sec = (sec*60).round.to_s

  "#{format("%d#{DEGREE}", degree)}#{format("%02d'", min)}#{format("%02d\"", sec)}"
end

# OUTPUT: String that represents that angle in degrees, minutes and seconds.
# Use degree symbol for degree, a single quote for minutes and double quote
# for seconds. 
# Use two digit numbers with leading zeros when formatting the minutes and sec.

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.0347733333) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00")
p dms(360) == %(0°00'00")

p dms(400) == %(40°00'00")
p dms(-40) == %(320°00'00")
p dms(-420) == %(300°00'00")