---
layout: post
title: "Exploring Precipitation & Stream Discharge Data to Better Understand - The 2013 Colorado Floods"
date: 2015-05-18
authors: Leah A. Wasser
dateCreated:  2015-05-18
lastModified: 2015-05-18
categories: [Coding and Informatics]
category: coding-and-informatics
tags: [R, time-series]
mainTag: GIS-Spatial-Data
scienceThemes: [phenology, disturbance]
description: "About the boulder flood."
code1: 
image:
  feature: TeachingModules.jpg
  credit: A National Ecological Observatory Network (NEON) - Teaching Module
  creditlink: http://www.neoninc.org
permalink: /R/Boulder-Flood-Data/
code1: Boulder-Flood-Data.R
comments: false
---

{% include _toc.html %}

Intro will go here...


    library(lubridate)
    library(ggplot2)

Open the data.


    ##   agency_cd  site_no         datetime tz_cd X04_00060 X04_00060_cd
    ## 1        5s      15s              20d    6s       14n          10s
    ## 2      USGS 06730200 2013-01-01 00:00   MST        22            A
    ## 3      USGS 06730200 2013-01-01 00:15   MST        22            A
    ## 4      USGS 06730200 2013-01-01 00:30   MST        22            A
    ## 5      USGS 06730200 2013-01-01 00:45   MST        22            A
    ## 6      USGS 06730200 2013-01-01 01:00   MST        22            A

    ## [1] "agency_cd"    "site_no"      "datetime"     "tz_cd"       
    ## [5] "X04_00060"    "X04_00060_cd"

    ## [1] "agency_cd"    "site_no"      "datetime"     "tz_cd"       
    ## [5] "disValue"     "X04_00060_cd"

Let's have a look at the structure of our data. It appears as if the discharge 
value is a character class. This is likely because we had an additional row in our
data. Let's convert the discharge column to a numeric class. It appears as if 
`integer` will work given there are no decimal places in our data.


    #view structure of data
    str(boulderStrDis.2013)

    ## 'data.frame':	34256 obs. of  6 variables:
    ##  $ agency_cd   : chr  "USGS" "USGS" "USGS" "USGS" ...
    ##  $ site_no     : chr  "06730200" "06730200" "06730200" "06730200" ...
    ##  $ datetime    : chr  "2013-01-01 00:00" "2013-01-01 00:15" "2013-01-01 00:30" "2013-01-01 00:45" ...
    ##  $ tz_cd       : chr  "MST" "MST" "MST" "MST" ...
    ##  $ disValue    : chr  "22" "22" "22" "22" ...
    ##  $ X04_00060_cd: chr  "A" "A" "A" "A" ...

    #convert column to integer
    boulderStrDis.2013$disValue <- as.integer(boulderStrDis.2013$disValue)
    
    class(boulderStrDis.2013$disValue)

    ## [1] "integer"

    str(boulderStrDis.2013)

    ## 'data.frame':	34256 obs. of  6 variables:
    ##  $ agency_cd   : chr  "USGS" "USGS" "USGS" "USGS" ...
    ##  $ site_no     : chr  "06730200" "06730200" "06730200" "06730200" ...
    ##  $ datetime    : chr  "2013-01-01 00:00" "2013-01-01 00:15" "2013-01-01 00:30" "2013-01-01 00:45" ...
    ##  $ tz_cd       : chr  "MST" "MST" "MST" "MST" ...
    ##  $ disValue    : int  22 22 22 22 22 22 22 22 22 22 ...
    ##  $ X04_00060_cd: chr  "A" "A" "A" "A" ...

#Converting Time Stamps
We have converted our discharge data to an integer format. However the time stamp
is still a character class. Let's convert it to a time class for efficient plotting,
next.


    #view class
    class(boulderStrDis.2013$datetime)

    ## [1] "character"

    #convert to date/time class - POSIX
    boulderStrDis.2013$datetime <- as.POSIXct(boulderStrDis.2013$datetime)
    
    #recheck data structure
    str(boulderStrDis.2013)

    ## 'data.frame':	34256 obs. of  6 variables:
    ##  $ agency_cd   : chr  "USGS" "USGS" "USGS" "USGS" ...
    ##  $ site_no     : chr  "06730200" "06730200" "06730200" "06730200" ...
    ##  $ datetime    : POSIXct, format: "2013-01-01 00:00:00" "2013-01-01 00:15:00" ...
    ##  $ tz_cd       : chr  "MST" "MST" "MST" "MST" ...
    ##  $ disValue    : int  22 22 22 22 22 22 22 22 22 22 ...
    ##  $ X04_00060_cd: chr  "A" "A" "A" "A" ...

    #make sure there are no null values in our datetime field
    sum(is.na(boulderStrDis.2013$datetime ))

    ## [1] 0


Great - let's plot the data. We can use GGPLOT to plot.


    ggplot(boulderStrDis.2013, aes(datetime, disValue)) +
      geom_point()

![ ]({{ site.baseurl }}/images/rfigs/2015-12-03-Boulder-Flood-Time-Series/plot-flood-data-1.png) 


We can plot a subset of our data too. Let's specify the months directly around
the boulder flood - so August - October 2013.


    #just subset the plot to the month of Aug15-oct15
    startTime <- as.POSIXct("2013-08-15 00:00:00")
    endTime <- as.POSIXct("2013-10-15 00:00:00")
    
    limits <- c(startTime,endTime)

#GGPLOT - 

One nice way to keep track of featured added to your plot in ggplot, is by first 
creating ... 


    #plot the data - September-October
    disPlot <- ggplot(data=boulderStrDis.2013,
           aes(datetime,disValue)) +
          geom_point() +
          scale_x_datetime(limits=limits)
          
    #add title and labels
    disPlot + theme(axis.title.x = element_blank()) +
              xlab("Time") + ylab("Stream Discharge CFS") +
              ggtitle("Stream Discharge - Station\n Boulder Creek 2013")

![ ]({{ site.baseurl }}/images/rfigs/2015-12-03-Boulder-Flood-Time-Series/plot-subset-1.png) 

#Publish to Plot.ly


    #code here

#Explore Precipitation During the Flood


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

    ## Warning: Removed 4 rows containing missing values (position_stack).

![ ]({{ site.baseurl }}/images/rfigs/2015-12-03-Boulder-Flood-Time-Series/import-precip-1.png) 



    library(plyr)
    #add a day column in the data frame
    precip.boulder$daily <- floor_date(precip.boulder$DATE, "day")
    
    #summarize by day
    dailyPrecip.boulder <- ddply(precip.boulder, "daily",summarise, x=sum(HPCP))
    
    names(dailyPrecip.boulder)

    ## [1] "daily" "x"

    #let's create a more meaningful column header for the precip value
    names(dailyPrecip.boulder) <- c("day","prec_100In")
    
    # view names
    names(dailyPrecip.boulder)

    ## [1] "day"        "prec_100In"

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

    ## Warning: Removed 4 rows containing missing values (position_stack).

![ ]({{ site.baseurl }}/images/rfigs/2015-12-03-Boulder-Flood-Time-Series/daily-summaries-1.png) 

## Units

It looks like our precipitation data are in 100th of an inch. Let's convert the 
data to inches - units that we might be a bit more accustomed to. And then let's
plot the data as a bar plot rather than a scatter plot.


    #convert to inches
    dailyPrecip.boulder$prec_in <- dailyPrecip.boulder$prec_100In / 100
    
    head(dailyPrecip.boulder)

    ##          day prec_100In prec_in
    ## 1 2013-01-01          0     0.0
    ## 2 2013-01-28         10     0.1
    ## 3 2013-01-29         10     0.1
    ## 4 2013-02-01          0     0.0
    ## 5 2013-02-14         10     0.1
    ## 6 2013-02-20         20     0.2

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

    ## Warning: Removed 4 rows containing missing values (position_stack).

![ ]({{ site.baseurl }}/images/rfigs/2015-12-03-Boulder-Flood-Time-Series/convert-units-1.png) 

