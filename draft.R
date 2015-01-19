# NOT FINAL
# 
# only used to collect notes and ideas and steps taken

# reading data. Cache this step, it takes looooooong.

stormData <- read. csv("repdata-data-StormData.csv.bz2")
dim(stormData)     

# 902,297 x 37

names(stormData)

# Important columns for research
#
# BGN_DATE   : 4/18/1950 - 11/28/2011
# EVTYPE     : TORNADO, DRYNESS, DENSE SMOKE, ....
# FATALITIES : 0, 1, 2, 3, ... 158, 583)
# INJURIES   : 0, 1, 2, 3, ... 1228, 1568, 1700)
# PROPDMG    : 0, 0.01, 0.02, ..., 4800.00, 5000.00)
# CROPDMG    : 0, 0.01, 0.02, ..., 985.00, 990.00)
#
# PROPDMGEXP / CROPDMGEXP : are these indications of K, M, B-dollar damage??



