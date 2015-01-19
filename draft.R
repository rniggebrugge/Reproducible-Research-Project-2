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

data2$data.PROPDMGEXP[(data2$data.PROPDMGEXP == "")] <- 0
data2$data.PROPDMGEXP[(data2$data.PROPDMGEXP == "+") | (data2$data.PROPDMGEXP == 
    "-") | (data2$data.PROPDMGEXP == "?")] <- 1
data2$data.PROPDMGEXP[(data2$data.PROPDMGEXP == "h") | (data2$data.PROPDMGEXP == 
    "H")] <- 2
data2$data.PROPDMGEXP[(data2$data.PROPDMGEXP == "k") | (data2$data.PROPDMGEXP == 
    "K")] <- 3
data2$data.PROPDMGEXP[(data2$data.PROPDMGEXP == "m") | (data2$data.PROPDMGEXP == 
    "M")] <- 6
data2$data.PROPDMGEXP[(data2$data.PROPDMGEXP == "B")] <- 9

data2$data.CROPDMGEXP[(data2$data.CROPDMGEXP == "")] <- 0
data2$data.CROPDMGEXP[(data2$data.CROPDMGEXP == "+") | (data2$data.CROPDMGEXP == 
    "-") | (data2$data.CROPDMGEXP == "?")] <- 1
data2$data.CROPDMGEXP[(data2$data.CROPDMGEXP == "h") | (data2$data.CROPDMGEXP == 
    "H")] <- 2
data2$data.CROPDMGEXP[(data2$data.CROPDMGEXP == "k") | (data2$data.CROPDMGEXP == 
    "K")] <- 3
data2$data.CROPDMGEXP[(data2$data.CROPDMGEXP == "m") | (data2$data.CROPDMGEXP == 
    "M")] <- 6
data2$data.CROPDMGEXP[(data2$data.CROPDMGEXP == "B")] <- 9


