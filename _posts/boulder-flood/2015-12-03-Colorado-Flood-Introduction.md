---
layout: post
title: "Understanding the 2013 Colorado Floods - #WorkWithData"
date:  2015-11-23
authors: [Leah A. Wasser]
dateCreated:  2015-05-18
lastModified: 2015-11-24
categories: [Coding and Informatics]
category: coding-and-informatics
tags: [R, time-series]
mainTag:
scienceThemes: [phenology, disturbance]
description: "About description here."
code1:
image:
  feature: TeachingModules.jpg
  credit: A National Ecological Observatory Network (NEON) - Teaching Module
  creditlink: http://www.neoninc.org
permalink: /R/Boulder-Flood-Overview/
code1: Boulder-Flood-Data.R
comments: false
---

{% include _toc.html %}

In September 2013 a slow moving cold front moved through Colorado, intersecting 
with a warm humid front. The clash between the cold and warm fronts yielded 
heavy rain & devastating flooding in colorado.


<iframe width="560" height="315" src="https://www.youtube.com/embed/XwbdAJGvj_o" frameborder="0" allowfullscreen></iframe>

**images of the event here**


<Something about where the data below come from??>

<figure>
<a href="https://en.wikipedia.org/wiki/2013_Colorado_floods#/media/File:North_American_Water_Vapor_Systems.gif">
    <img src="https://upload.wikimedia.org/wikipedia/commons/9/97/North_American_Water_Vapor_Systems.gif"></a>
    <figcaption>This is an animated loop of water vapor systems over the western 
    area of North America on September 12th, 2013 as shown by the GOES-15 and 
    GOES-13 satellites. The storm that caused the 2013 Colorado flooding was kept 
    in a confined area over the Eastern Range of the Rocky Mountains in Colorado 
    by these water vapor systems. SOURCES: Cooperative Institute for Meteorological 
    Satellite Studies (CIMSS), University of Wisconsin – Madison, USA -
    [CIMSS](http://cimss.ssec.wisc.edu/goes/blog/archives/13876)</figcaption>

</figure>

**maps of impact** 
The map below shows 

1. the designated floodplain for Boulder County, Colorado. 
2. the regions around that floodplain that were inundated or flooded. 

{% include /maps/_boulderFloodplain.html %}

**plots of precip and discharge here**

![ ]({{ site.baseurl }}/images/rfigs/2015-12-03-Boulder-Flood-Time-Series/plot-flood-data-1.png) 



###Hourly Precipitation
![ ]({{ site.baseurl }}/images/rfigs/2015-12-03-Boulder-Flood-Time-Series/daily-summaries-1.png) 

