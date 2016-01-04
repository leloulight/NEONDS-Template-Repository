---
layout: post
title: "Understanding the 2013 Colorado Floods - #WorkWithData"
date: 2015-11-23
authors: [Leah A. Wasser]
dateCreated: 2015-05-18
lastModified: 2015-12-04
categories: [Coding and Informatics]
category: coding-and-informatics
tags: [R, time-series]
mainTag:
scienceThemes: [phenology, disturbance]
description: "The overview page I'll use at CU Dec 2015."
code1:
image:
  feature: TeachingModules.jpg
  credit: A National Ecological Observatory Network (NEON) - Teaching Module
  creditlink: http://www.neoninc.org
permalink: /R/Boulder-Flood-Overview5/
code1: Boulder-Flood-Data.R
comments: false
---

{% include _toc.html %}

 
* <a href="http://coflood2013.colostate.edu/timeline_impacts.html" target="_blank">A nice timeline of the events leading up to and during the flood:</a>

In September 2013 a slow moving cold front moved through Colorado, intersecting 
with a warm humid front. The clash between the cold and warm fronts yielded 
heavy rain & devastating flooding in colorado.


<iframe width="560" height="315" src="https://www.youtube.com/embed/XwbdAJGvj_o" frameborder="0" allowfullscreen></iframe>

**images of the event here**


Below - an animation of the storm front that triggered the 2013 Colorador floods.

<figure>
<a href="https://en.wikipedia.org/wiki/2013_Colorado_floods#/media/File:North_American_Water_Vapor_Systems.gif">
    <img src="https://upload.wikimedia.org/wikipedia/commons/9/97/North_American_Water_Vapor_Systems.gif"></a>
    <figcaption>This is an animated loop of water vapor systems over the western 
    area of North America on September 12th, 2013 as shown by the GOES-15 and 
    GOES-13 satellites. The storm that caused the 2013 Colorado flooding was 
    kept in a confined area over the Eastern Range of the Rocky Mountains in 
    Colorado by these water vapor systems. SOURCES: Cooperative Institute for
    Meteorological Satellite Studies (CIMSS), University of Wisconsin – Madison,
    USA -
    [CIMSS](http://cimss.ssec.wisc.edu/goes/blog/archives/13876)</figcaption>

</figure>






#Drought and Rain

##Palmer Drought Index

Below is the palmer index from 1990 to 2015 for Colorado
What are the patterns of drought observed in PA based upon this index?

![]({{ site.baseurl }}/images/rfigs/2015-12-03-Boulder-Flood-Time-Series/drought-data-1.png)


1. When did the Palmer index begin a positive cycle? 
2. Did the negative cycles coincide with the floods?


<div>
    <a href="https://plot.ly/~leahawasser/145/" target="_blank" title="Palmer Drought Severity Index - Colorado" style="display: block; text-align: center;"><img src="https://plot.ly/~leahawasser/145.png" alt="Palmer Drought Severity Index - Colorado" style="max-width: 100%;width: 600px;"  width="600" onerror="this.onerror=null;this.src='https://plot.ly/404.png';" /></a>
    <script data-plotly="leahawasser:145"  src="https://plot.ly/embed.js" async></script>
</div>


http://www7.ncdc.noaa.gov/CDO/CDODivisionalSelect.jsp#

#The Impact of Rainfall

Background -- 
**what causes large rain events**
**what is normal rainfal for a region**
**is / how is rainfall changing?**


![ ]({{ site.baseurl }}/images/rfigs/2015-12-03-Boulder-Flood-Time-Series/import-precip-1.png) 

Below is a plot of hourly precipitation between August 15 - October 15 2015. Explore
the data and answer the following questions

1. What dates were the highest precipitation values observed? What was the total 
precipitation on these days? What units is that value in?

2. 


<div>
    <a href="https://plot.ly/~leahawasser/116/" target="_blank" title="Daily Total Precipitation (Inches) - Boulder Creek 2013" style="display: block; text-align: center;"><img src="https://plot.ly/~leahawasser/116.png" alt="Daily Total Precipitation (Inches) - Boulder Creek 2013" style="max-width: 100%;width: 600px;"  width="600" onerror="this.onerror=null;this.src='https://plot.ly/404.png';" /></a>
    <script data-plotly="leahawasser:116"  src="https://plot.ly/embed.js" async></script>
</div>



#Stream Discharge data

**some background on stream discharge will go here..**

Below, have a look at a static plot that shows stream discharge in Boulder Creek
for 2013. What do you notice about the patterns of discharge seen in these data?

![ ]({{ site.baseurl }}/images/rfigs/2015-12-03-Boulder-Flood-Time-Series/plot-flood-data-1.png) 

<div>
    <a href="https://plot.ly/~leahawasser/140/" target="_blank" title="Stream Discharge - Boulder Creek 2013" style="display: block; text-align: center;"><img src="https://plot.ly/~leahawasser/140.png" alt="Stream Discharge - Boulder Creek 2013" style="max-width: 100%;width: 600px;"  width="600" onerror="this.onerror=null;this.src='https://plot.ly/404.png';" /></a>
    <script data-plotly="leahawasser:140"  src="https://plot.ly/embed.js" async></script>
</div>

#Light Detection and Ranging

<figure>

<img src="http://data-lessons.github.io/NEON-R-Spatial-Raster/images/raster_timeseries/lidarTree-height.png">
<figcaption>Digital Terrain Models, Digital Surface Models and Canopy height
models are three common lidar derived data products. The digital terrain model
allows scientists to study changes in terrain (topography) over time.
</figcaption>
</figure>

#Imagery Showing changes in Lee Hill Road

<figure>

<img src="http://neonhighered.org/websiteGraphics/2013-Boulder-flood-data.gif
">
<figcaption>2013 Flood damage to Lee Hill Road, Boulder, Colorado.
</figcaption>
</figure>



