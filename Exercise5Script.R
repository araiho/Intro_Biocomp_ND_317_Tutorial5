data=read.table(file="test.dat", header=FALSE, sep=" ")
data
data[,1]==1
data[,1]>2
data[data[,1]>2,]
wages=read.csv(file="wages.csv",header=TRUE,stringsAsFactors=FALSE)
class(wages)
dim(wages)
head(wages)
#we can extract all of the female wage data using square brackets
females=wages[wages[,1]=="female",]
dim(females)
unique(females[,1])
#or a mix of square brackets and dollarsign notation
females2=wages[wages$gender=="female",]
dim(females2)
unique(females2$gender)
females3=subset(x=wages,wages$gender=="female")
dim(females3)
unique(females$gender)


#Challenge Question 1
#orders by column 1
order(wages[ ,1])
#orders by column 2
order(wages[ ,2])
#selects only the first and second column
wages1 = wages[ ,1:2]
#sorts by column 1 then column 2
wages1[order(wages1[ ,1], wages1[ ,2]),]
#takes the unique combinations only
unique(wages1[order(wages1[ ,1], wages1[ ,2]),])

###Question 1 answer
Question1 = unique(wages1[order(wages1[ ,1], wages1[ ,2]),])


#Challenge Question 2
#selects all columns except column 3
wages2 = wages[, -c(3)]
wages2[order(wages2[ ,3]),]

###Question 2 Answer
#Lowest Earner
LowestEarner = head(wages2[order(wages2[ ,3]),],1)
#Highest Earner
HighestEarner = tail(wages2[order(wages2[ ,3]),],1)
#Number of females in top 10 earners
TopTenEarners = tail(wages2[order(wages2[ ,3]),],10)
sum(TopTenEarners =="female")


#Challenge Question 3
