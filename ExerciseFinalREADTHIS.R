rm(list=ls())

#Sort unique combinations of gender and years experience by first gender and then years experience
wages=read.csv(file="wages.csv",header=TRUE,stringsAsFactors=FALSE)
wages2=unique(wages[,1:2])
female=wages2[wages2[,1]=="female",]
male=wages2[wages2[,1]=="male",]
orderedfemale=female[order(female[,2]),]
orderedmale=male[order(male[,2]),]
orderedwages2=rbind(orderedfemale,orderedmale)
write.csv(orderedwages2,file="orderedwages.csv")

#print the lowest and highest earner
wageshighestlowest=wages[order(wages[,4]),]
print('Highest Earning Female')
head(tail(wageshighestlowest, n=2),n=1)
print('Highest Earning Male')
tail(wageshighestlowest, n=1)

#print the topten earning females
#Script for returning top ten earners as topten
topten=tail(wageshighestlowest, n=10)
#Script for returning females in topten earners as toptenfemales
toptenfemales=topten[topten[,1]=="female",]
print('Number of females in top ten')
print(nrow(toptenfemales))

yrschool=wages[order(wages[,3]),]
#print the difference in min wages for 16 yrs vs 12 yrs
minwage=head(tail(yrschool, n=16), n=1)[,4] - tail(head(wageshighestlowest, n=3), n=1)[,4]
print('The effect of graduating college on the minimum wage of earners in the dataset is a difference of')
print(minwage)

