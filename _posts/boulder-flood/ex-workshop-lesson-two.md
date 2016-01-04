---
layout: post
title: "Quantifying Disturbance Events: 2013 Colorado Floods Overview"
date:  2015-11-23
authors: [Leah A. Wasser, Mariela Perignon, Megan A. Jones]
dateCreated:  2015-11-23
lastModified: 2015-12-04
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
