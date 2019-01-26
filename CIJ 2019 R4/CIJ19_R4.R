#################
## R_CLASS_IV ##
#################

#1. Descriptive statistics
#2. Beyond descriptive statistics

##############################
##1. Descriptive statistics ##
##############################

#R comes with a number of built in packages for analysis
#This means you can run simple analysis on practice data sets

#To see how R gives you the ability to analyse your data simply and effectively we're going to use one it's built in data packages

#To see a full list of the packages
data()

#We're going to use airquality dataset for this class
#Open it up and take a look
airquality

#Let's also find out more about the dataset
?airquality

#If we were going to use this in a story about air pollution what might we want to know?
#The first step is to look at the descriptive statistics
#What are descriptive statistics?

#The summary function gives you basic descriptive statistics 
??summary

#Let's look at the summary statistics for the Wind column in the airquality dataset
summary(airquality$Wind)

#Let's look through the details of what is returned from this query
#What might you want to use these for?

#Let's run the summary analysis for the entire dataset
summary(airquality)

#There are some unusual results in there
#Any ideas why we are getting the summary stats for month and day?

#Looking at the results, what might you use from this to describe your data? 
#Let's come up with a few top lines from the data for a story

#####################################
##2. Beyond descriptive statistics ##
#####################################

#We're going to look at data on smokers

#Let's read in the data
#Note we're reading in a table this time
lung <- read.table("LungCapData.txt", header=T)

#What's different about this data to that of before?

#Let's check out the data headers
names(allgenderpay)

#Of course we can also get the summary statistics for the entire table as well
summary(allgenderpay)
#What is different in this summary table to the first one we created?

#If we want to summarize a categorical variable, Smoke, this is done in a summary table
#It's summarized by a frequency or proportion
table(lung$Smoke)

#So we know the number of smokers and non-smokers
#Let's get the total number of people in the survey
length(lung$Smoke)

#Let's use this to calculate the proportion of smokers and non-smokers
table(lung$Smoke)/725

#Or we can do it like this
table(lung$Smoke)/length(lung$Smoke)
#Why does this also work?

#Let's look at this based on the gender breakdown
table(lung$Smoke, lung$Gender)

#Let's look at working with the numeric variables in the data set
#We'll consider the appropriate number to use looking at the averageâ¦
mean(lung$LungCap)

#We can also trim the mean if we are concerned that there may be outliers
mean(lung$LungCap, trim=0.10)

#What can you tell by comparing the results of the mean and the trimmed mean?

#Let's look at the median as well
median(lung$LungCap)

#Based on these results what number might you want to report in your story?
#Let's take a further look at some of the further simple stats functions..

#To calculate the variance use var
var(lung$LungCap)
#When might we use this?

#Let's get the standard deviation
sd(lung$LungCap)

#Let's look at the correlation between lung capacity and age
cor(lung$LungCap, lung$Age)
#How can we interpret the result?

#What other variables appear to have a strong correlation?

###################
## Caelainn Barr ##
## The Guardian  ##
## @caelainnbarr ##
###################