setwd('C:/Users/prite/Documents/sahil/Data Analytics/Data sets')

# Load the "readxl" package if it's not already installed
library(readxl)

# Read excel file
data_excel <- read_excel("2010EPI_data.xls", sheet = "EPI2010_all countries")

#Read a csv file
EPI_data <- read.csv("2010EPI_data.csv", skip = 1)

summary(data)

# Scatter Plot two columns of a dataset
plot(EPI_data$BIODIVERSITY, EPI_data$CLIMATE, xlab = "BIODIVERSITY", ylab = "CLIMATE", main = "Plot between climate and biodiversity")

# Finding common column between two datasets
common_column = intersect(names(data_excel), names(data_csv))

# Load R datasets
data()

help(data)

# Example loading an R dataset
data(EuStockMarkets)

# View the dataset
View(EPI_data)

attach(EPI_data)
BIODIVERSITY
detach(EPI_data)
X.20

# To fix the data set in an editor
fix(EPI_data)
EPI

# Exercise 1

# Stats
summary(EPI)

fivenum(EPI,na.rm=TRUE)

stem(EPI)

# Creating histogram of epi column
hist(EPI)

hist(EPI, seq(30., 95., 1.0), prob=TRUE)

lines(density(EPI,na.rm=TRUE,bw=1.))

# Shows exact count in small lines on the axis
rug(EPI)

help(stem)

plot(ecdf(EPI), do.points=FALSE, verticals=TRUE) 

par(pty="s")
qqnorm(EPI)
qqline(EPI)

x<-seq(30,95,1)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for tdsn")

# Fitting a distribution
DALY
WATER_H

plot(ecdf(DALY), do.points=FALSE, verticals=TRUE) 
plot(ecdf(WATER_H), do.points=FALSE, verticals=TRUE) 

qqnorm(DALY)
qqline(DALY)

qqnorm(WATER_H)
qqline(WATER_H)

boxplot(EPI, DALY)

correlation_matrix = EPI_data[['EPI', 'ENVHEALTH', 'ECOSYSTEM', 'DALY', 'AIR_H', 'WATER_H', 'BIODIVERSITY']].corr()

View(EPI_data)
