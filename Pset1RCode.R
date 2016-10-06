# STATISTIC E-100 
# R SCRIPT FOR PROBLEM SET #1

# The R code below will help you run the analyses you need for this problem set after you have uploaded the dataset.
# Note that comments are set with the pound marker "#" and these lines of text are ignored by R.

# Setting up R for Analysis:
# How to install an R package (only needs to be done once):
install.packages("mosaic")

# How to load an R package:
library("mosaic")


## Pset R Code:

# 1. What are the observational units in the Titanic dataset? 
# What are the names of the variables?
View(Titanic)
names(Titanic)

# 2. Approximately how many people on the Titanic were in the Lower class?
bargraph( ~ Class, data = Titanic)
tally(~Class, format = "count", data = Titanic)

# 3. Based on this data, what proportion of men survived the Titanic? 
# What proportion of women survived? 
tally(~Survived | Gender, format = "proportion", data = Titanic, margins=TRUE)

# 4. Among those in the upper class, what proportion survived the Titanic?
# Among those in the lower class, what proportion survived the Titanic?
tally(~Survived | Class, format = "proportion", data = Titanic, margins=TRUE)

# 5. Are social class and surviving the Titanic related to each other?
tally(~Survived | Class, format = "proportion", data = Titanic, margins=TRUE)


## Other Useful R Code:

## Data Management:
# How to load a dataset into R:
# load("C:/Titanic.RData")

##  How to view the dataset as a spreadsheet:
View(Titanic)
# How to remove a dataset from R:
# rm(Titanic)


## Creating Tables and Graphs for One Categorical Variable:

# How to create a table of counts (a frequency table):
tally(~Class, format = "count", data = Titanic)

# How to create a table of proportions:
tally(~Class, format = "proportion", data = Titanic)

# How to create a table of percentages:
tally(~Class, format = "percent", data = Titanic)

# How to create a bar graph of counts in R:
bargraph( ~ Class, data = Titanic)

# How to create a pie chart:
counts <- tally(~Class, format = "count", data = Titanic)
pie(counts)


## Creating Contingency Tables for Two Categorical Variables:

# How to create a contingency table of counts:
tally(~Class + Survived, format = "count", data = Titanic, margins=TRUE)

# How to create a table of proportions or percentages without conditioning:
tally(~Class + Survived, format = "proportion", data = Titanic, margins=TRUE)
tally(~Class + Survived, format = "percent", data = Titanic, margins=TRUE)

# How to create a table of proportions conditional on one variable versus another:
tally(~Class | Survived, format = "proportion", data = Titanic, margins=TRUE)
tally(~Survived | Class, format = "proportion", data = Titanic, margins=TRUE)

# How to create a table of percentages conditional on one variable versus another:
tally(~Class | Survived, format = "percent", data = Titanic, margins=TRUE)
tally(~Survived | Class, format = "percent", data = Titanic, margins=TRUE)


## Creating Graphics for Two Categorical Variables:

# How to create mosaic plots:
mosaicplot(~Class + Survived, data=Titanic, color=TRUE)
mosaicplot(~Survived + Class, data=Titanic, color=TRUE)

# How to create dodged bar charts of counts:
bargraph(~Class, groups=Survived, auto.key=TRUE, data=Titanic)
bargraph(~Survived, groups=Class, auto.key=TRUE, data=Titanic)

# How to create stacked bar charts of counts:
bargraph(~Class, groups=Survived, auto.key=TRUE, stack=TRUE, data=Titanic)
bargraph(~Survived, groups=Class, auto.key=TRUE, stack=TRUE, data=Titanic)


## End of R Code