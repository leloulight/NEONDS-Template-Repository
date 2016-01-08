---
layout: post
title: "Title of Post Here - This Is An Example Post"
description: "This is a sample post to document and explore available styles. Description should be fully in PLAIN TEXT -- no code text"
date: 2015-12-18
dateCreated: 2014-11-18
lastModified: 2016-01-04
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
  credit:
  creditlink:
permalink: /example-post/
comments: false
---

{% include _toc.html %}


	Add Table of Contents (Overview) to side bar with include file
    {%  include _toc.html %}

#Heading one - TITLE
	#Heading one TITLE  -> typically this is auto produced from yaml header

##About
1-2 sentences describing what the lesson is about

	##About
	1-2 sentences describing what the lesson is about

**R Skill Level:** Intermediate - you've got the basics of `R` down.
	**R Skill Level:** Intermediate - you've got the basics of `R` down.

<div id="objectives" markdown="1">

#Goals / Objectives
After completing this activity, you will:

* Objective 1.
* Objective 2.

##Things You’ll Need To Complete This Lesson
To complete this lesson you will need the most current version of R, and 
preferably, RStudio loaded on your computer.

###Install R Packages

* **library:** `install.packages("library")`
* **rgdal:** `install.packages("rgdal")`

* [More on Packages in R - Adapted from Software Carpentry.]({{site.baseurl}}R/Packages-In-R/)

###Download Data

{% include/dataSubsets/_data_Landsat-NDVI.html %}

{% include/dataSubsets/_data_Landsat-NDVI.html %}

	
****

{% include/_greyBox-wd-rscript.html %}


**Raster Lesson Series :** This lesson is a part of a lesson series on raster 
data in R <<link here>>

*** 

###Additional Resources

* one resources
* another 

</div>

	<div id="objectives" markdown="1">

	#Goals / Objectives
	After completing this activity, you will:
	* Objective 1
	* Objective 2 

	##Things You’ll Need To Complete This Lesson
	To complete this lesson you will need the most current version of R, and 
	preferably, RStudio loaded on your computer.

	###R Libraries to Install:

	* **library:** `install.packages("library")`
	* **rgdal:** `install.packages("rgdal")`

	[ {{ site.baseurl }} R/Packages-In-R/](More on Packages in R - Adapted from Software Carpentry.)

	###Download Data

	{ include/dataSubsets/_data_Landsat-NDVI.html %}

	{ include/dataSubsets/_data_Landsat-NDVI.html %}
	

	{ include/_greyBox-wd-rscript.html %}
	
	**Raster Lesson Series :** This lesson is a part of a lesson series on raster 
	data in R <<link here>>
	NOTE: the above text could be an include file that reads YAML elements

	</div>

***
    create rule (pale grey horizontal line) using atlas 3 stars (*)
	incidetally 4 stars (****) does the same thing
    ***

***

All headers with in lessons are headers 2-4.  

##Heading two
	##Heading two

###Heading three
	###Heading three 

####Heading four
	####Heading four 


***

Code for a data tip:

<i class="fa fa-star"></i> **Data Tip:** Here is a block with a data tip. 
Sometimes it might have some `code` in it.
{: .notice}

	<i class="fa fa-star"></i> **Data Tip:** Here is a block with a data tip. 
	Sometimes it might have some `code` in it.
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

***
Any image with caption & source:

<figure>
    <a href="{{ site.baseurl }}/images/pnt_line_poly.png">
    <img src="{{ site.baseurl }}/images/pnt_line_poly.png"></a>
    <figcaption> Caption here. 
	Source: National Ecological Observatory Network (NEON)  
    </figcaption>
</figure>

    <figure>
    	<a href="{{ site.baseurl }}/images/pnt_line_poly.png">
    	<img src="{{ site.baseurl }}/images/pnt_line_poly.png"></a>
    	<figcaption> Caption here. 
		Source: National Ecological Observatory Network (NEON)  
    	</figcaption>
    </figure>


replace `{ site.baseurl }}/images/pnt_line_poly.png`  with the full URL if 
image is not in the images folder. 


***

Two images side by side:

<figure class="half">
    <a href="{{site.baseurl}}/images/600x300.jpg">
	<img src="{{site.baseurl}}/images/600x300.jpg">
	</a>
    <a href="{{site.baseurl}}/images/600x300.jpg">
	<img src="{{site.baseurl}}/images/600x300.jpg"></a>
    <figcaption>Caption describing these two images. Include Source: 
	</figcaption>
</figure>

	 <figure class="half">
   		<a href="{{site.baseurl}}/images/600x300.jpg">
		<img src="{{site.baseurl}}/images/600x300.jpg">
		</a>
   		<a href="{{site.baseurl}}/images/600x300.jpg">
		<img src="{{site.baseurl}}/images/600x300.jpg">
		</a>
    	<figcaption>Caption describing these two images. Source(s): here
		</figcaption>
	</figure>    

***
##Challenges
Trying out a nice light color to make the challenges stand out. 
It might be nice to also add a small icon for challenges like SWC uses? or not.
The div tags (<\div>) goes BEFORE the code chunk associated with the challenge. 

All challenges are Header 2 (##)

<div id="challenge" markdown="1">
##Challenge: Title of Challenge
  
Here is some challenge text.

* it can have bullets
* another bullet

or 

1. a numbered list
2. or two 

some more text here

**bolding stuff**

*italicize stuff*

It can have multiple paragraphs too.
</div>


	<div id="challenge" markdown="1">
	##Challenge
	  
	Here is some challenge text.

	* it can have bullets
	* another bullet

	or 

	1. a numbered list
	2. or two 

	  
	some more text here

	**bolding stuff**

	*italicize stuff*

	it can have multiple paragraphs, too.
	</div>
  
  
Challenge Code Chunks

We can include the answers to challenge questions in the .Rmd files. 
If we set `echo=FALSE`, then the code will render in the `R` script that can be
downloaded at the bottom of the page. However, it will not render on th website.

	``` {r challenge-code-name-here, echo=FALSE}
	# we don't want challenge code to post but do want it to appear 
	# in the .R script.
	```

If we want to hide the answer output add `results=hide` but if we want to
keep the figures and allow them to show use `include=TRUE`.

	```  {r challenge-code-name, include=TRUE, results="hide", echo=FALSE}
	# If you want figures but no code or results to appear.
	```
