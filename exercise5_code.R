setwd("C:/Users/DAVIS/Desktop/shell-novice-data/exer5/")
data=read.table(file="test.dat",header=FALSE, sep=" ")

wages = read.csv(file="wages.csv", header=TRUE, stringsAsFactors = FALSE)

#Challenge question 1
test1 <- unique(wages[,c("gender","yearsExperience")])
write.csv(test2,"gender_years_in_order.csv")

#Challenge question 2
test2 <- test1[order(test1[,1], test1[,2]),]

#Challenge question 3

twelve_years <- wages[which(wages$yearsSchool==12),]
#unique(twelve_years$yearsSchool)
head(twelve_years[order(twelve_years$wage),],n=1)
#tail(twelve_years[order(twelve_years$wage),],n=1)

sixteen_years <- wages[which(wages$yearsSchool==16),]
head(sixteen_years[order(sixteen_years$wage),],n=1)
#tail(sixteen_years[order(sixteen_years$wage),],n=1)
