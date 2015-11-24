## ----load-libraries------------------------------------------------------
library(lubridate)
library(ggplot2)


## ----import-discharge, echo=FALSE----------------------------------------
#SOURCe
#http://nwis.waterdata.usgs.gov/co/nwis/uv/?cb_00065=on&cb_00060=on&format=rdb&site_no=06730200&period=&begin_date=2013-01-01&end_date=2013-12-31
#import data
discharge <- read.table("precip-discharge/2013-discharge.txt",
                        sep="\t",
                        stringsAsFactors = FALSE,
                        skip=25,
                        header=TRUE)

#view first few lines
head(discharge)

#remove the first line from the data frame (which is a second list of headers)
boulderStrDis.2013 <- discharge[2:nrow(discharge),]

#view names
names(boulderStrDis.2013)

#rename headers so they are more meaningful
names(boulderStrDis.2013)[5] <- "disValue"

#view names
names(boulderStrDis.2013)

## ----adjust-data-structure-----------------------------------------------
#view structure of data
str(boulderStrDis.2013)

#convert column to integer
boulderStrDis.2013$disValue <- as.integer(boulderStrDis.2013$disValue)

class(boulderStrDis.2013$disValue)
str(boulderStrDis.2013)


## ----convert-time--------------------------------------------------------
#view class
class(boulderStrDis.2013$datetime)

#convert to date/time class - POSIX
boulderStrDis.2013$datetime <- as.POSIXct(boulderStrDis.2013$datetime)

#recheck data structure
str(boulderStrDis.2013)

#make sure there are no null values in our datetime field
sum(is.na(boulderStrDis.2013$datetime ))


## ----plot-flood-data-----------------------------------------------------

ggplot(boulderStrDis.2013, aes(datetime, disValue)) +
  geom_point()


## ----define-time-subset--------------------------------------------------

#just subset the plot to the month of Aug15-oct15
startTime <- as.POSIXct("2013-08-15 00:00:00")
endTime <- as.POSIXct("2013-10-15 00:00:00")

limits <- c(startTime,endTime)


## ----plot-subset---------------------------------------------------------
#plot the data - September-October
disPlot <- ggplot(data=boulderStrDis.2013,
       aes(datetime,disValue)) +
      geom_point() +
      scale_x_datetime(limits=limits)
      
#add title and labels
disPlot + theme(axis.title.x = element_blank()) +
          xlab("Time") + ylab("Stream Discharge CFS") +
          ggtitle("Stream Discharge - Station\n Boulder Creek 2013")



## ----plot.ly-------------------------------------------------------------

#code here


## ----import-precip-------------------------------------------------------

precip.boulder <- read.csv("precip-discharge/2013-precip-data-640457.csv",
                           stringsAsFactors = FALSE)


#convert date time
precip.boulder$DATE <- as.POSIXct(precip.boulder$DATE,
                                  format="%Y%m%d %H:%M")

#clean up no data values
precip.boulder$HPCP[precip.boulder$HPCP==99999] <- NA

#plot the data - September-October
precPlot <- ggplot(data=precip.boulder,
      aes(DATE,HPCP)) +
      geom_bar(stat="identity") +
      scale_x_datetime(limits=limits) +
      scale_y_continuous(limits = c(0, 300))
      
#add title and labels
precPlot + theme(axis.title.x = element_blank()) +
          xlab("Time") + ylab("Precipitation (100th of an inch)") +
          ggtitle("Hourly Precipitation - Boulder - Station\n Boulder Creek 2013")


## ----daily-summaries-----------------------------------------------------

library(plyr)
#add a day column in the data frame
precip.boulder$daily <- floor_date(precip.boulder$DATE, "day")

#summarize by day
dailyPrecip.boulder <- ddply(precip.boulder, "daily",summarise, x=sum(HPCP))

names(dailyPrecip.boulder)

#let's create a more meaningful column header for the precip value
names(dailyPrecip.boulder) <- c("day","prec_100In")

# view names
names(dailyPrecip.boulder)

#plot the data - September-October
precPlot <- ggplot(data=dailyPrecip.boulder,
      aes(day,prec_100In)) +
       geom_bar(stat="identity") +
      scale_x_datetime(limits=limits) +
      scale_y_continuous(limits = c(0, 800))
      
#add title and labels
precPlot + theme(axis.title.x = element_blank()) +
          xlab("Time") + ylab("Precipitation (100th of an inch)") +
          ggtitle("DAILY Precipitation - Boulder- Station\n Boulder Creek 2013")



## ----convert-units-------------------------------------------------------


#convert to inches
dailyPrecip.boulder$prec_in <- dailyPrecip.boulder$prec_100In / 100

head(dailyPrecip.boulder)


#plot the data - September-October
precPlot <- ggplot(data=dailyPrecip.boulder,
      aes(day,prec_in)) +
      geom_bar(stat="identity") +
      scale_x_datetime(limits=limits) +
      scale_y_continuous(limits = c(0, 8))
      
#add title and labels
precPlot + theme(axis.title.x = element_blank()) +
          xlab("Time") + ylab("Precipitation (inches)") +
          ggtitle("Daily Total Precipitation (Inches) - Boulder- Station\n Boulder Creek 2013")



