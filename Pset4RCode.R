# STATISTIC E-100 
# R SCRIPT FOR PROBLEM SET #4

# The R code below will help you run the analyses you need for this problem set after you have uploaded the dataset.
# Note that comments are set with the pound marker "#" and these lines of text are ignored by R.

# Setting up R for Analysis:
# How to install an R package (only needs to be done once):
install.packages("mosaic")

# How to load an R package:
library("mosaic")

## Pset R Code:

# 1. How many observational units are in the dataset? How many variables 
# are there? 
nrow(States)
ncol(States)
View(States)

# 2. Create a histogram of the variable ObamaVote, which gives the percentage 
# of votes for Barack Obama in the 2008 presidential election. Is the distribution 
# of this variable roughly-mound-shaped? Can we use the empirical rule to 
# characterize the spread of this variable?
histogram(~ObamaVote, nint=10, data=States)

# 3. Create a histogram of the variable Population, which gives the population 
# of each state (in millions of people). Is the distribution of this variable 
# roughly-mound-shaped? Can we use the empirical rule to characterize the 
# spread of this variable?
histogram(~Population, nint=10, data=States)

# 4. What is the covariance between ObamaVote and College? What does this tell 
# you about the relationship between these two variables?
cov(ObamaVote ~ College, data=States)

# 5. The variable ObamaVote gives the percentage of votes for Barack Obama 
# in the 2008 presidential election. Find the correlation between ObamaVote
# and each of the following variables: HouseholdIncome (average household 
# income in a state), NonWhite (the percent who do not identify as "white"),
# College (the percent who graduated from college), Obese (the percent who 
# are obese), and Population (the state population in millions of people). 
# Write down these results in descending order, from the most positive to 
# the most negative correlation.
cor(ObamaVote ~ HouseholdIncome, data=States)
cor(ObamaVote ~ NonWhite, data=States)
cor(ObamaVote ~ College, data=States)
cor(ObamaVote ~ Obese, data=States)
cor(ObamaVote ~ Population, data=States)

## Other Useful R Code:

## Examining Your Data

# How to find the number of rows in the dataset
nrow(States)

# How to find the number of columns in the dataset
ncol(States)

# How to view your dataset as a spreadsheet:
View(States)

# How to examine the first several rows of the dataset:
head(States)

# How to examine the last several rows of the dataset:
tail(States)

## Calculating and Visualizing Correlations:
  
# How to create a scatter plot for two numerical variables:
xyplot(ObamaVote ~ HouseholdIncome, data=States)

# How to calculate the covariance of two variables:
cov(ObamaVote ~ HouseholdIncome, data=States)

# How to calculate the correlation coefficient:
cor(ObamaVote ~ HouseholdIncome, data=States)


## End of R Code