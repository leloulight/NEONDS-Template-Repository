################## 

# This code takes a set of Rmd files from a designated git repo and
# 1) knits them to jekyll flavored markdown 
# 2) purls them to .R files
# it then cleans up all image directories, etc from the working dir!
##################

require(knitr)

#################### Set up Input Variables #############################
#Inputs - Where the git repo is on your computer
gitRepoPath <-"~/Documents/GitHub/NEONDS-Template-Repository/"

#jekyll will only render md posts that begin with a date. Add one.
#add.date <- "2015-10-26-Rast"

#set working dir - this is where the data are located
wd <- "~/Documents/data/BoulderFlood"


################### CONFIG BELOW IS REQUIRED BY JEKYLL - DON"T CHANGE ############
#set data working dir
setwd(wd)

#don't change - this is the posts dir location required by jekyll
postsDir <- ("_posts/boulder-flood")

#images path
imagePath <- "images/rfigs/"

#set the base url for images and links in the md file
base.url="{{ site.baseurl }}/"
opts_knit$set(base.url = base.url)

#################### Set up Image Directory #############################
#make sure image directory exists
#if it doesn't exist, create it
#note this will fail if the sub dir doesn't exist
if (file.exists(paste0(wd,"/","images"))){
  print("image dir exists - all good")
} else {
  #create image directory structure
  dir.create(file.path(wd, "images/"))
  dir.create(file.path(wd, "images/rfigs"))
  dir.create(file.path(wd, figDir))
  print("image directories created!")
}

#NOTE -- delete the image directory at the end!

#################### Get List of RMD files to Render #############################


#get a list of files to knit / purl
rmd.files <- list.files(paste0(gitRepoPath,postsDir), pattern="*.Rmd", full.names = TRUE )

#################### Set up Image Directory #############################


for (files in rmd.files) {
  
  #copy .Rmd file to data working directory 
  file.copy(from = files, to=wd, overwrite = TRUE)
  input=basename(files)
  
  #setup path to images
  #print(paste0(imagePath, sub(".Rmd$", "", basename(input)), "/"))
  fig.path <- paste0(imagePath, sub(".Rmd$", "", input),"/")
  
  
  opts_chunk$set(fig.path = fig.path)
  opts_chunk$set(fig.cap = " ")
  #render_jekyll()
  render_markdown(strict = TRUE)
  #create the markdown file name - add a date at the beginning to Jekyll recognizes
  #it as a post
  mdFile <- paste0(gitRepoPath,postsDir,"/",sub(".Rmd$", "", input), ".md")
  
  #knit Rmd to jekyll flavored md format 
  knit(input, output = mdFile, envir = parent.frame())
  
  #COPY image director, rmd file OVER to the GIT SITE###
  
  #copy image directory over
  file.copy(paste0(wd,"/",fig.path), paste0(gitRepoPath,imagePath), recursive=TRUE)
  
  #copy rmd file to the rmd directory on git
  file.copy(paste0(wd,"/",basename(files)), paste0(gitRepoPath,postsDir), recursive=TRUE)
  
  #delete local repo copies of RMD files just so things are cleaned up??
  
  ## OUTPUT STUFF TO R ##
  #output code in R format
  rCodeOutput <- paste0(gitRepoPath,postsDir,"/", sub(".Rmd$", "", basename(files)), ".R")
  
  #purl the code to R
  purl(files, output = rCodeOutput)
  
  #clean up
  #remove Rmd file from data working directory
  unlink(basename(files))
  
  #print when it's done
  doneWith <- paste0("processed: ",files)
  print(doneWith)
  
}

#clean up images directory (remove all sub dirs)
unlink(paste0(wd,"/",imagePath,"*"), recursive = TRUE)

########################### end script  
