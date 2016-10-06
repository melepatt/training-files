# STATISTIC E-100 
# R SCRIPT FOR PROBLEM SET #3

# The R code below will help you run the analyses you need for this problem set after you have uploaded the dataset.
# Note that comments are set with the pound marker "#" and these lines of text are ignored by R.

# Setting up R for Analysis:
# How to install an R package (only needs to be done once):
install.packages("mosaic")

# How to load an R package:
library("mosaic")

## Pset R Code:

# 1. How many respondents are in the dataset? How many variables are there? 
nrow(HealthGSS)
ncol(HealthGSS)
View(HealthGSS)

# 2. The variable Health measures self-reported overall health (with two levels, 
# "Good" or "Fair") and the variable Poverty measures whether one is imposerved 
# (with two levels, "Poor" and "Non-Poor"). What is the probability of being 
# poor and having fair health? What is the probability of being non-poor and 
# having fair health?
tally(~Health + Poverty, format="proportion", data = HealthGSS, margins=TRUE)

# 3. What is the probability of having fair health given a person is poor? 
# What is the probability of having fair health given a person is non-poor? 
tally(~Health | Poverty, format="proportion", data = HealthGSS, margins=TRUE)

# 4. What is the relative risk (RR) of having fair health? How do you interpret 
# this finding and what do you conclude? When calculating the relative risk, 
# we will call those living in poverty the exposed group and those who are not 
# living in poverty the unexposed group. 
tally(~Health | Poverty, format="proportion", data = HealthGSS, margins=TRUE)

# 5. The variable Change measures whether or not people are satisfied with 
# the current health care system. Those who respond "Yes" are satisfied with 
# the current health care system, while those who respond to "No" are not 
# satisfied (and want to change the health care system). What is the probability 
# wanting to change the health care system (responding "Yes") among those who 
# are poor? How about among those who are non-poor? What do these findings suggest?
tally(~Change | Poverty, format="proportion", data = HealthGSS, margins=TRUE)


## Other Useful R Code:

## Examining Your Data

# How to find the number of rows in the dataset
nrow(HealthGSS)

# How to find the number of columns in the dataset
ncol(HealthGSS)

# How to view your dataset as a spreadsheet:
View(HealthGSS)

# How to examine the first several rows of the dataset:
head(HealthGSS)

# How to examine the last several rows of the dataset:
tail(HealthGSS)

## Creating a random sample of 10 kids from the dataset
PopularKids10 <- sample(PopularKids, size=10)
head(PopularKids10)

# Creating a random sample of 25 people from the dataset
HealthGSS <- sample(HealthGSS, size=25)
head(HealthGSS)

## Contingency Tables of Counts:
  
# How to create a table of counts without conditioning:
tally(~Depressed + Poverty, format="count", data = HealthGSS, margins=TRUE)

## Contingency Tables of Proportions (Probability Tables):
  
# How to create a table of proportions without conditioning:
tally(~Depressed + Poverty, format="proportion", data = HealthGSS, margins=TRUE)

# How to create a table of proportions conditional on one variable versus another:
tally(~Depressed | Poverty, format="proportion", data = HealthGSS, margins=TRUE)
tally(~Poverty | Depressed, format="proportion", data = HealthGSS, margins=TRUE)

## How to Deal Cards:
  
# How to deal 1, 3, and cards from a 52-card deck:
deal(Cards, 1)
deal(Cards, 3)
deal(Cards, 5)

## How to Flip Coins:
  
# How to flip a fair coin 1, 5, and 10 times in a row:
rflip(1)
rflip(5)
rflip(10)

# How to make 5 people flip a fair coin 10 times in a row:
do(5)*rflip(10)

# How to make 50 people flip a coin 10 times in a row and graph the total number of heads each person flipped:
coinflips <- do(50)*rflip(10)
tally(~heads, data=coinflips)
dotPlot(~heads, data=coinflips, width=1)

## End of R Code