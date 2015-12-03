---
layout: post
title: "Understanding the 2013 Colorado Floods: Before Class Materials"
date:  2015-11-23
authors: [Leah A. Wasser, Megan A. Jones]
dateCreated:  2015-11-23
lastModified: 2015-12-03
categories: [Coding and Informatics]
category: coding-and-informatics
tags: [R, time-series]
mainTag:
scienceThemes: [phenology, disturbance]
description: "This page provides materials on ecological disturbances, the 2013 
Colorado floods, disturbance return intervals, and the basics of LiDAR.  This 
material will prepare students to learn about and discuss how data can be used 
to increase our understanding of the causes and effects of a disturbance event."
code1:
image:
  feature: TeachingModules.jpg
  credit: A National Ecological Observatory Network (NEON) - Teaching Module
  creditlink: http://www.neoninc.org
permalink: /R/Boulder-Flood-PreClassroom/
code1: 
comments: false
---

{% include _toc.html %}


Within the next couple of days we'll be discussing natural disturbance events
and how data can help us understand how and why the events occur.  Prior to our
classroom work we all need to have the same background information to facilitate
our discussions.  Please read, watch, and click through the following sections
on disturbance events and data that helps us understand these events.  

Throughout this material we ask you several questions. Be ready to discuss these
questions in class! 

#Introduction to Disturbance Events

Within ecology, disturbance events are those events which cause dramatic change
in an ecosystem through a temporary, often rapid, change in environmental
conditions. Although the disturbance events themselves can be of short duration,
the ecological effects last decades, if not longer. 

Common examples of natural ecological disturbances include hurricanes, fires, 
floods, earthquakes and windstorms. 


IMAGE LIKE: http://cquest.arc.nasa.gov:8399/casa/global/images/slide1a.gif
Common natural ecological disturbances -- Image from NASA-CASA Project


Disturbance events can also be human caused: clear cuts when logging, fires to clear forests for cattle grazing or the building of new housing developments are all common disturbances. 


IMAGE LIKE:  url="http://cquest.arc.nasa.gov:8399/casa/global/images/slide2a.gif 
Common human-caused ecological disturbances -- Image from NASA-CASA Project


Ecological communities are often more resilient to some types of disturbance than
others. Some communities are even dependent on cyclical disturbance events. 
Lodgepole pine (_Pinus_ _contorta_) forests in the Western US are dependent on
frequent stand-replacing fires to release seeds and spur the growth of young 
trees.  

IMAGE LIKE: http://sustain.sfsu.edu/sustain/sustain/files/assets/images/Pinus%20Contorta%20forest%2C%20post%20fire.jpg
Regrowth of Lodgepole Pine *Pinus* *contorta* after a stand-replacing fire -- Image: Creative Commons Attribution

However, in discussions of ecological disturbance events we think about events 
that disrupt the status of the ecosystem and change the structure of the
landscape.  

## The 2013 Colorado Front Range Flood

In early September 2013 a slow moving cold front moved up into Colorado and was
held in position by an opposing warm humid front. Static over the Colorado Front
Range the joint weather systems yielded heavy rains and catastrophic
flooding in northern Colorado.

<iframe width="854" height="480" src="https://www.youtube.com/embed/O4avdwvilFs" frameborder="0" allowfullscreen></iframe>
Images from the 2013 flood filmed by the local paper, The Daily Camera. 


By Monday September 16th, Boulder weather stations had officially measured
17.15" of rain for the past week and 30.12" for the year.  This was far more
than the region had ever experienced before:

* With 9.08" of rain Thursday September 12th shattered Boulder’s previous record for wettest calendar day (4.80" July 31, 1919).

* The rain on just Thursday was nearly twice as much as any the TOTAL rain
September has ever had in Boulder (5.50" in 1940).

* The week's rainfall easily topped Boulder’s previous wettest MONTH (9.59" in
May 1995).

* The week’s precipitation exceeded the 12.96" that fell in Boulder during all
of 2013 prior to September 8.

This list is adapted from Bob Henson's <a href="https://www2.ucar.edu/atmosnews/perspective/10250/inside-colorado-deluge" target="_blank"> UCAR article.</a>

Interested in more images of damage from the 2013 flood in Boulder County? 
Boulder County provides a Flood Damage Tour <a href="http://bouldercounty.maps.arcgis.com/apps/MapTour/index.html?appid=69e8c069dd20438dbfaf0ca327c6b918&webmap=3de6761bed8c4335b24ea3108e912d57" target="_blank"> Flood Damage Tour</a> 
with photos paired with maps of the damaged area. {: .notice}

## A 1000 year Flood!!!  Understanding Return Periods

When talking about major disturbance events we often hear "It was a 1000-year
flood" or "That was a 100-year storm".  What does this really mean?  

Major hurricanes are forecast to strike New Orleans, Louisiana once every <a href="http://climatica.org.uk/climate-science-information/return-periods-extreme-events" target="_blank">
20 years</a> . Yet in 2005 New Orleans was pummeled by 4 hurricanes and 1
tropical storm.  Hurricane Cindy in July 2013 caused the worst black out in New
Orleans for 40 years.  Eight weeks later Hurricane Katrina came ashore over New 
Orleans, changed the landscape of the city and became the costliest natural
disaster to date in the United States.  It was frequently called a 100-year
storm. 

If we say the return period is 20 years then how did 4 hurricanes strike New 
Orleans in 1 year?

<iframe width="560" height="315" src="http://www.weather.com/news/weather/video/1000-year-flood-explained" frameborder="0" allowfullscreen></iframe>


The return period of extreme events is also referred to as _recurrence_
_interval_. It is an estimate of the likelihood of an extreme event
based on the statistical analysis of data (including flood records, fire
frequency, historical climatic records) that an event of a given magnitude will 
occur in a given year. The probability can be used to assess the risk of these
events for human populations but can also be used by biologists when creating 
habitat management plans or conservation plans for endangered species. The
concept is based on the _magnitude-frequency_ _principle_, where large magnitude
events (such as major hurricanes) are comparatively less frequent than smaller
magnitude incidents (such as rain showers).  (For more information visit  <a href="http://climatica.org.uk/climate-science-information/return-periods-extreme-events" target="_blank">
Climatica's Return Periods of Extreme Events.</a>)

1.  Your friend is thinking about buying a house near Boulder Creek.  The 
house is above the level of seasonal high water but was flooded in the 2013
flood.  He realizes how expensive flood insurance is and says, "Why do I have to
buy this insurance, a flood like that won't happen for another 100 years? 
I won't live here any more."  How would you explain to him that even though the
flood was a 100-year flood he should still buy the flood insurance?  


###Why was The Flooding so Destructive? 
SOME BEFORE/AFTER SHOWING A CHANGE IN STREAM FLOW Like Before After St. Vrain Image  
http://krcc.org/post/post-flood-planning-boulder-county  

A major disturbance event like this flood causes significant changes in a 
landscape.  The St. Vrain River in the image above completely shifted its course
of flow in less than 5 days! This brings major changes for aquatic organisms, 
like crayfish, that lived along the old stream bed that is now bare and dry, or 
for, terrestrial organisms, like a field vole, that used to have a burrow under 
what is now the St. Vrain River.  Likewise, the people living in the house that 
is now on the west side of the river instead of the eastern bank have a 
completely different yard and driveway!  

1. Why might this storm have caused so much flooding? 
2. What other weather patterns could have contributed to pronounced flooding? 


# How do We Measure Changes in Terrain? LiDAR!

<iframe width="640" height="360" src="https://www.youtube.com/embed/EYbhNSUnIdU" frameborder="0" allowfullscreen></iframe>

1. How can LiDAR data be collected?  
2. How might we use LiDAR to hlep study the 2013 Colorado Floods?

### Using LiDAR Data

LiDAR data can be used to create many different models of a landscape.  This
brief lesson on 
<a href="http://neondataskills.org/remote-sensing/2_LiDAR-Data-Concepts_Activity2/" target="_blank">
"What is a CHM, DSM and DTM? About Gridded, Raster LiDAR Data"</a> explores
three important landscape models that are commonly used.  

1. How might we use a CHM, DSM or DTM model to better understand what happened
in the 2013 Colorado Flood? 
2. Would you use only one of the models or could you use two or more of them
together?

###More Details on LiDAR

If you are particularly interested in how LiDAR works consider taking a closer
look at how the data is collected and represented by going through this tutorial
on <a href="http://neondataskills.org/remote-sensing/1_About-LiDAR-Data-Light-Detection-and-Ranging_Activity1/" target="_blank"> "Light Detection and Ranging."</a> 

