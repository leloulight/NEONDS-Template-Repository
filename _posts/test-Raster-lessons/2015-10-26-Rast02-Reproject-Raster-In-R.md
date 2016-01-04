---
layout: post
title: "Test Lesson 02: When Rasters Don't Line Up - Reproject Raster Data in R"
date:   2015-10-27
authors: [Jason Williams, Jeff Hollister, Kristina Riemer, Mike Smorul, Zack Brym, Leah Wasser]
contributors: [Megan A. Jones]
packagesLibraries: [raster, rgdal]
dateCreated:  2015-10-23
lastModified: 2015-12-30
category: spatio-temporal-workshop
tags: [raster-ts-wrksp, raster, GIS-spatial-data]
mainTag: raster-ts-wrksp
workshopSeries: [raster-data]
description: "This lesson explains how to reproject a raster in `R` using the
`projectRaster()` function in the raster package."
code1: SR02-Reproject-Raster-In-R.R
image:
  feature: NEONCarpentryHeader_2.png
  credit: A collaboration between the National Ecological Observatory Network (NEON) and Data Carpentry
  creditlink: http://www.neoninc.org
permalink: /R/Reproject-Raster-In-R
comments: false
---

{% include _toc.html %}

##About

Sometimes we encounter raster datasets that do not "line up" when plotted or 
analyzed. Rasters that don't line up are most often in different Coordinate Reference
Systems (`CRS`).

This lesson explains how to deal with rasters in different, known `CRS`s. It will
walk though reprojecting rasters in `R` using the `projectRaster` function in
the `raster` library.

**R Skill Level:** Intermediate - you've got the basics of `R` down.

