#Excercise5,Question2
wages<-read.csv(file="wages.csv",header=TRUE,stringsAsFactors = FALSE)
EliminateColumnThree=wages
#I copied the file to a new name to extract the data, but not lose the original data
EliminateColumnThree$yearsSchool<-NULL
#Deleted the third column
maxorderedwages<-EliminateColumnThree[order(-EliminateColumnThree$wage),1:3]
head(maxorderedwages,1)
#Gives the gender, yearsExperience, and wage for highest earner
minorderedwages<-EliminateColumnThree[order(EliminateColumnThree$wage),1:3]
head(minorderedwages,1)
#Gives the gender, yearsExperience, and wage for lowest earner
maxorderedwages<-EliminateColumnThree[order(-EliminateColumnThree$wage),1:3]
TenHighest<-head(maxorderedwages,10)
females<-TenHighest[TenHighest$gender=="female",]
nrow(females)
#Counts the number of females of the top ten earners
