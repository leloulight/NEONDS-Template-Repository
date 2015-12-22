---
layout: post
title: "Title of Post Here"
description: "This is a sample post to document and explore available styles."
date: 2015-12-18
dateCreated: 2014-11-18
lastModified: `r format(Sys.time(), "%Y-%m-%d")`
estimatedTime: 1.0 - 1.5 Hours
packagesLibraries: RHDF5
authors: [Author One, Author Two]
contributors: [Contributor One]
categories: [coding-and-informatics]
category: coding-and-informatics
tags: [HDF5, R]
mainTag: HDF5
<<<<<<< HEAD
description: "Description Here With No Code Notes (e.g. `R`)."
=======
>>>>>>> 7d4a2b2de12f7d317f89027effce19d0890bf468
code1: R-code-File-Name-Here.R
image:
  feature: TeachingModules.jpg
  credit: Colin Williams NEON, Inc.
  creditlink: http://www.neoninc.org
permalink: /example-post/
comments: false
---

{% include _toc.html %}

##About
1-2 sentences describing what the lesson is about

**R Skill Level:** Intermediate - you've got the basics of `R` down.

<div id="objectives" markdown="1">
##Goals / Objectives
After completing this activity, you will:

 * Be able to XXX.
 
##Things You'll Need To Complete This Lesson
You will need the most current version of `R` and, preferably, RStudio loaded on
your computer to complete this lesson.

##R Libraries to Install:
* **packageName:** `install.packages("NAME")`

<a href="{{ site.baseurl }}/R/Packages-In-R/" target="_blank"> 
More on Packages in R - Adapted from Software Carpentry.</a>

##Data to Download
Can be a link or an _include file. 

**Set Working Directory:** This lessons assumes that you have set your working 
directory to the location of the downloaded and unzipped data subset. 
[An overview of setting the working directory in `R` can be found here.]({{site.baseurl}}/R/Set-Working-Directory "R Working Directory Lesson") 

**Challenge Code:** NEON Data Skills tutorials often contain challenges that
reinforce learned skills. If available, the code for challenge solutions is
found in adownloadable `R` script available on the footer of each lesson page.

** Lesson Series: ** This lesson is a part of a lesson series on XXX 
data in `R`.  (Delete if not applicable)
</div> 

#Heading one
Introduction to the page goes here



##Heading two

###Heading three

For a pale grey horizontal line: ***
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

***
Any image with caption & source:

<figure>
    <a href="{{ site.baseurl }}/images/pnt_line_poly.png">
    <img src="{{ site.baseurl }}/images/pnt_line_poly.png"></a>
    <figcaption> Caption here. Image Source: NEON,Inc.  
    </figcaption>
</figure>

    <figure>
       <a href="{{ site.baseurl }}/images/pnt_line_poly.png">
       <img src="{{ site.baseurl }}/images/pnt_line_poly.png"></a>
      <figcaption> Caption here. Image Source: NEON,Inc.  
      </figcaption>
    </figure>


replace "{{ site.baseurl }}/images/pnt_line_poly.png"  with the full URL if 
image is not in the images folder. 

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
<<<<<<< HEAD
    <a href="/images/image-filename-1-large.jpg"><img src="/images/image-filename-1.jpg"></a>
    <a href="/images/image-filename-2-large.jpg"><img src="/images/image-filename-2.jpg"></a>
    <figcaption>Caption describing these two images.  Image Source: Here </figcaption>
=======
    <a href="/images/600x300.jpg"><img src="/images/600x300.jpg"></a>
    <a href="/images/600x300.jpg"><img src="/images/600x300.jpg"></a>
    <figcaption>Caption describing these two images.</figcaption>
>>>>>>> 7d4a2b2de12f7d317f89027effce19d0890bf468
</figure>

    <figure class="half">
        <a href="{{ site.baseurl}}/images/image-filename-1-large.jpg"><img src="{{ site.baseurl}}/images/600x300.jpg"></a>
        <a href="/images/image-filename-2-large.jpg"><img src="/images/image-filename-2.jpg"></a>
        <figcaption>Caption describing these two images.Image Source: Here </figcaption>
    </figure>
    
***

Trying out a nice light color to make the challenges stand out. It might be nice to also add a small icon for challenges like SWC uses? or not.

<div id="challenge" markdown="1">
##Challenge
  
Here is some challenge text.

<<<<<<< HEAD
* it can have bullets
* another bullet

or 

1. a numbered list
2. or two 
  
It can have quotes too!

>like this
=======
* It can have bullets
* Another bullet
  
some more text here

**bolding stuff**
*italicize stuff*
>>>>>>> 7d4a2b2de12f7d317f89027effce19d0890bf468

>even multiple paragraphs
</div>

``` {r challenge-code-name-here, echo=FALSE}
# we don't want challenge code to post but do want it to appear in the .R
# script.

# If you want figures but no code or results to appear
#  {r challenge-code-name, include=TRUE, results="hide", echo=FALSE}
```



  <div id="challenge" markdown="1">
  ##Challenge
  
  Here is some challenge text.

  * it can have bullets
  * another bullet

  or 

  1. a numbered list
  2. or two 
  
  It can have quotes too!

  >like this

  >even multiple paragraphs
  </div>
  
  ``` {r challenge-code-name-here, echo=FALSE}
  # we don't want challenge code to post but do want it to appear in the .R
  # script.
  
  # If you want figures but no code or results to appear
  #  {r challenge-code-name, include=TRUE, results="hide", echo=FALSE}
  
  ```
  
<<<<<<< HEAD
=======
    <div id="challenge" markdown="1">
    ##Challenge
    
    Here is some challenge text.
    * it can have bullets
    * another bullet
    
    some more text here

    **bolding stuff**
    *italicize stuff*
    
    </div>
>>>>>>> 7d4a2b2de12f7d317f89027effce19d0890bf468
