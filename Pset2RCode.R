# STATISTIC E-100 
# R SCRIPT FOR PROBLEM SET #2

# The R code below will help you run the analyses you need for this problem set after you have uploaded the dataset.
# Note that comments are set with the pound marker "#" and these lines of text are ignored by R.

#------------------------------------------------------------------------------#

# Setting up R for Analysis:
# How to install an R package (only needs to be done once):
install.packages("mosaic")

# How to load an R package:
library("mosaic")

# sets the working directory to folder with code and data set
setwd(getwd())

# loads data set
load("PopularKids.RData")

#------------------------------------------------------------------------------#

## Pset R Code:

# 1. Based on the average, which of the four qualities (Looks, Grades, Sports, or Money)
# did the children believe would make them most popular? What is the average for each quality?
# Remember that each children was asked to rank each quality from 1 to 4, where 1 is the most 
# important quality and 4 is the least important quality.
mean(~Looks, data=PopularKids)
mean(~Grades, data=PopularKids)
mean(~Sports, data=PopularKids)
mean(~Money, data=PopularKids)

# 2. Based on the median, which of the four qualities (Looks, Grades, Sports, or Money)
# did the children believe would make them most popular? What is the median for each quality? 
# Remember that each children was asked to rank each quality from 1 to 4, where 1 is the most 
# important quality and 4 is the least important quality.
median(~Looks, data=PopularKids)
median(~Grades, data=PopularKids)
median(~Sports, data=PopularKids)
median(~Money, data=PopularKids)

# 3. What is the average and median age of the students in the study? 
# What does this discrepancy suggest?
mean(~Age, data=PopularKids)
median(~Age, data=PopularKids)

# 4. What is the variance and standard deviation of the children's ages? Why is the standard deviation
# larger than the variance?
sd(~Age, data = PopularKids)
var(~Age, data = PopularKids)

# 5. Create a boxplot of students' ages. Are there any outliers? If so, what are the ages of 
# the outlying students?
bwplot(~Age, data = PopularKids)
bwplot(~Age, data = PopularKids)

## Useful R Code:
#------------------------------------------------------------------------------#
# 1: Exploring Your Data with Row Subsets

## How to view your dataset as a spreadsheet:
View(PopularKids)
names(PopularKids)

# How to examine the first several rows of the dataset:
head(PopularKids)

# How to examine the last several rows of the dataset:
tail(PopularKids)

## Creating a random sample of 10 kids from the dataset
PopularKids10 <- sample(PopularKids, size=10)
head(PopularKids10)

# Creating a random sample of 25 kids from the dataset
PopularKids10 <- sample(PopularKids, size=25)
head(PopularKids25)

#------------------------------------------------------------------------------#
## 2: Summarizing Numerical Data

# How to find a set of summary statistics for a variable:
favstats(Grades, data=PopularKids)

# How to find the mean and median of a numerical variable:
mean(~Grades, data=PopularKids)
median(~Grades, data=PopularKids)

# How to apply summary statistics using the with() function:
with(PopularKids, mean(Grades))
with(PopularKids, median(Grades))


# How to find the variance and standard deviation:
var(~Grades, data=PopularKids)
sd(~Grades, data=PopularKids)

# demonstration that the square root of variance is the standard deviation
sqrt(var(~Grades, data=PopularKids))

# How to find the range and IQR of a numerical variable:
range(~Grades, data=PopularKids)
IQR(~Grades, data=PopularKids)

# Sorting counts from least to most frequent 
# (so the last value is the mode or most frequent value):
counts <- tally(~Grades, format = "count", data = PopularKids)
sort(counts)

#------------------------------------------------------------------------------#
## 3: Graphing Numerical Data

# How to create a histogram (with the nint option controlling the number of bins or intervals):
histogram(~Age, nint=3, data=PopularKids)
histogram(~Age, nint=5, data=PopularKids)

# Density Plot:
densityplot(~Age, data=PopularKids)

# Box Plot:
bwplot(~Age, data=PopularKids)
favstats(~ Age, data = PopularKids)

# Stem-and-leaf plots and dot plots work best with relatively small datasets (fewer than
# about 100 rows or so). The PopularKids dataset has about 478 rows, so we will create
# a random sample of 25 students before using a stem-and-leaf plot and dot plot:

# creating a random sample of 25 students
PopularKids25 <- sample(PopularKids, size=25)
head(PopularKids25)

# How to create a stem-and-leaf plot:
with(PopularKids10, stem(Grades))

# How to create a dot plot (with the nint option controlling the number of bins or intervals):
dotPlot(~Age, nint=3, data=PopularKids25)
dotPlot(~Age, nint=5, data=PopularKids25)


## End of R Code