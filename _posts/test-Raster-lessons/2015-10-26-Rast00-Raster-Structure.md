---
layout: post
title: "TEST Lesson 00: Intro"
date:   2015-10-29
authors: [Kristina Riemer, Zack Brym, Jason Williams, Jeff Hollister,  Mike Smorul, Leah Wasser]
contributors: [Megan A. Jones]
dateCreated: 2015-10-23
lastModified: 2015-12-30
packagesLibraries: [raster, rgdal]
workshopSeries: [raster-data]
category:  
tags: [raster, GIS-spatial-data, raster-ts-wrksp]
mainTag: raster-ts-wrksp
description: "This lesson reviews the fundamental principles, libraries and 
metadata / raster attributes that are needed to work with raster data in R."
code1: SR00-Raster-Structure.R
image:
  feature: NEONCarpentryHeader_2.png
  credit: A collaboration between the National Ecological Observatory Network (NEON) and Data Carpentry
  creditlink: 
permalink: /R/Introduction-to-Raster-Data-In-R
comments: false
---

{% include _toc.html %}

##About
In this lesson, we will cover the basics of raster data and how to how to open, 
plot and explore raster data properties in `R`.

**R Skill Level:** Intermediate - you've got the basics of `R` down.

<div id="objectives" markdown="1">

###Goals / Objectives

After completing this activity, you will:

* Understand what a raster dataset is and its fundamental attributes.
* Know how to explore raster attributes in `R`.
* Be able to import rasters into `R` using the `raster` library.
* Be able to quickly plot a raster file in `R`.
* Understand the difference between single- and mult-band rasters.


**To complete this lesson:** you will need the most current version of R, and 
preferably RStudio, loaded on your computer.

####R Libraries to Install:

* **raster:** `install.packages("raster")`
* **rgdal:** `install.packages("rgdal")`

####Download Data

<a href="https://ndownloader.figshare.com/files/3579867" class="btn btn-success"> Download NEON Airborne Observation Platform Raster Data Teaching Subset</a> 

The LiDAR and imagery data used to create this raster teaching data subset were
collected over the NEON <a href="http://www.neoninc.org/science-design/field-sites/harvard-forest" target="_blank" >Harvard Forest</a>
and 
<a href="http://www.neoninc.org/science-design/field-sites/san-joaquin-experimental-range" target="_blank" >San Joaquin Experimental Range</a>
field sites and processed at
<a href="http://www.neoninc.org" target="_blank" >NEON </a> 
headquarters. The entire dataset can be accessed by request from the 
<a href="http://www.neoninc.org/data-resources/get-data/airborne-data" target="_blank"> NEON Airborne Data Request Page on the NEON Website.</a>

**Set Working Directory:** This lessons assumes that you have set your working 
directory to the location of the downloaded and unzipped data subset. [An overview
of setting the working directory in `R` can be found here.]({{site.baseurl}}/R/Set-Working-Directory "R Working Directory Lesson") 
lesson prior to beginning this lesson.

**Challenge Code:** NEON Data lesson often contain challenges that reinforce 
learned skills. If available, the code for challenge solutions is found in a 
downloadable `R` script available on the footer of each lesson page.

**Raster Lesson Series : ** This lesson is a part of a lesson series on raster 
data in R <<link here>>

###Additional Resources

* <a href="http://cran.r-project.org/web/packages/raster/raster.pdf" target="_blank">
Read more about the `raster` package in `R`.</a>
* <a href="http://neondataskills.org/R/Raster-Data-In-R/" target="_blank" >  NEON Data Skills: Raster Data in R - The Basics</a>
* <a href="http://neondataskills.org/R/Image-Raster-Data-In-R/" target="_blank" > NEON Data Skills: Image Raster Data in R - An Intro</a>

</div>


