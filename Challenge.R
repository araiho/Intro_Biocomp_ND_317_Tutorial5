#Sort unique combinations of gender and years experience by first gender and then years experience
wages=read.csv(file="wages.csv",header=TRUE,stringsAsFactors=FALSE)
wages2=unique(wages[,1:2])
female=wages2[wages2[,1]=="female",]
male=wages2[wages2[,1]=="male",]
orderedfemale=female[order(female[,2]),]
orderedmale=male[order(male[,2]),]
orderedwages2=rbind(orderedfemale,orderedmale)
#set working directory
setwd("C:/cygwin64/home/bhava/data-shell/molecules/Intro_Biocomp_ND_317_Tutorial5")
#Load wages.csv file
wages=read.csv(file="wages.csv",header=TRUE,stringsAsFactors=FALSE)
#write unique combinations of gender and yearsExperience
wages3=unique(wages[,1:2])
#write the file to sort the yearsExperience of gender
wages5=wages3[order( wages3[,2] ),]
#print the lowest and highest earner
wageshighestlowest=wages[order(wages[,4]),]
head(wageshighestlowest, n=1)
tail(wageshighestlowest, n=1)
#print the topten earning females
#Script for returning top ten earners as topten
topten=head(wageshighestlowest, n=10)
#Script for returning females in topten earners as toptenfemales
toptenfemales=topten[topten[,1]=="female",]
#Return the row with 12 years of experience with minimum wage
tail(head(wageshighestlowest, n=3), n=1)
#print the wages for 16yrs
head(tail(yrschool, n=16), n=1)[,4]
#print the min wages for 12yrs
tail(head(wageshighestlowest, n=3), n=1)[,4]
#print the difference in min wages for 16 yrs vs 12 yrs
minwage=head(tail(yrschool, n=16), n=1)[,4] - tail(head(wageshighestlowest, n=3), n=1)[,4]
