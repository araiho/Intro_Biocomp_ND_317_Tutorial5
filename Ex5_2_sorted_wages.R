#returns the gender, yearsExperience, and wage for the highest earner.
#returns the gender, yearsExperience, and wage for the lowest earner.
#returns the number of females in the top 10 earners in this dataset.

wages=read.csv(file="wages.csv",header=TRUE,stringsAsFactors=FALSE)
attach(wages)
sorted.wages <- wages[order(wage) , ]

#Highest Wage
head(sorted.wages, n = 1)

#Lowest Wage
tail(sort.wages, n = 1)
top10.wages <- head(sort.wages, n = 10)
top10.females <- subset(top10.wages, gender!="male")
#Number of females in the top 10 wages.
nrow(top10.females)

