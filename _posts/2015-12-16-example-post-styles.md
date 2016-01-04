---
layout: post
title: "Title of Post Here"
description: "This is a sample post to document and explore available styles."
date: 2015-12-18
dateCreated: 2014-11-18
lastModified: 2015-05-19
estimatedTime: 1.0 - 1.5 Hours
packagesLibraries: RHDF5
authors: [Author One, Author Two]
contributors: [Contributor One]
categories: [coding-and-informatics]
category: coding-and-informatics
tags: [HDF5, R]
mainTag: HDF5
code1: R-code-File-Name-Here.R
image:
  feature: TeachingModules.jpg
  credit: Colin Williams NEON, Inc.
  creditlink: http://www.neoninc.org
permalink: /example-post/
comments: false
---

{% include _toc.html %}


	#include table of contents
     	# {  include _toc.html %}


**R Skill Level:** Intermediate - you’ve got the basics of R down.

<div id="objectives" markdown="1">

#Goals / Objectives
After completing this activity, you will:

* Objective 1
* Be able to extract values from raster that correspond to a vector file overlay.

##Things You’ll Need To Complete This Lesson

To complete this lesson: you will need the most current version of R, and 
preferably RStudio, loaded on your computer.

###Install R Packages

* **library:** `install.packages("library")`
* **rgdal:** `install.packages("rgdal")`


###Download Data

{% include/dataSubsets/_data_Landsat-NDVI.html %}
{% include/dataSubsets/_data_Landsat-NDVI.html %}

	
****

{% include/_greyBox-wd-rscript.html %}


**Raster Lesson Series :** This lesson is a part of a lesson series on raster 
data in R <<link here>>


</div>

	<div id="objectives" markdown="1">

	#Goals / Objectives
	After completing this activity, you will:
	* Objective 1
	* Objective 2 

	##Things You’ll Need To Complete This Lesson

	**To complete this lesson:** you will need the most current version of R, and 
	preferably RStudio, loaded on your computer.

	###R Libraries to Install:

	* **library:** `install.packages("library")`
	* **rgdal:** `install.packages("rgdal")`

	###Download Data

	{ include/dataSubsets/_data_Landsat-NDVI.html %}
	{ include/dataSubsets/_data_Landsat-NDVI.html %}
	

	{ include/_greyBox-wd-rscript.html %}
	
	**Raster Lesson Series :** This lesson is a part of a lesson series on raster 
data in R <<link here>>
	NOTE: the above text could be an include file that reads YAML elements
	</div>

#Heading one - TITLE
Introduction to the page goes here



##Heading two

###Heading three

***

Code for a data tip:

    <i class="fa fa-star"></i> **Data Tip:** Here is a block with a data tip.
    {: .notice}

<i class="fa fa-star"></i> **Data Tip:** Here is a block with a data tip.
{: .notice}


***

Code for a quote block:

>Here is a quote block
>you can use all sorts of different spacing and bullets in it too
>
> * list one
> * list two
> but you have to use a `>` on each line for it to work which is a pain.

    >Here is a quote block
    >you can use all sorts of different spacing and bullets in it too
    >
    > * list one
    > * list two
    > but you have to use a `>` on each line for it to work which is a pain.


A rule is below:

***
    #create rule
    ***

    
Render One Image

<figure>
    <a href="/images/600x300.jpg"><img src="/images/600x300.jpg"></a>
    <figcaption>Caption describing the above image, Image Source: source here.</figcaption>
</figure>

	<figure>
	    <a href="/images/600x300.jpg"><img src="/images/600x300.jpg"></a>
	    <figcaption>Caption describing the above image, Image Source: source here.</figcaption>
	</figure>

Two images side by side:

<figure class="half">
    <a href="/images/600x300.jpg"><img src="/images/600x300.jpg"></a>
    <a href="/images/600x300.jpg"><img src="/images/600x300.jpg"></a>
    <figcaption>Caption describing these two images.</figcaption>
</figure>

    <figure class="half">
        <a href="{{ site.baseurl}}/images/image-filename-1-large.jpg"><img src="{{ site.baseurl}}/images/600x300.jpg"></a>
        <a href="/images/image-filename-2-large.jpg"><img src="/images/image-filename-2.jpg"></a>
        <figcaption>Caption describing these two images.</figcaption>
    </figure>
    
***

Trying out a nice light color to make the challenges stand out. It might be nice to also add a small icon for challenges like SWC uses? or not.

<div id="challenge" markdown="1">
##Challenge
  
Here is some challenge text.

* It can have bullets
* Another bullet
  
some more text here

**bolding stuff**
*italicize stuff*

</div>
  
  
    <div id="challenge" markdown="1">
    ##Challenge
    
    Here is some challenge text.
    * it can have bullets
    * another bullet
    
    some more text here

    **bolding stuff**
    *italicize stuff*
    
    </div>
