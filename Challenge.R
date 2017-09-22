#Sort unique combinations of gender and years experience by first gender and then years experience
wages=read.csv(file="wages.csv",header=TRUE,stringsAsFactors=FALSE)
wages2=unique(wages[,1:2])
female=wages2[wages2[,1]=="female",]
male=wages2[wages2[,1]=="male",]
orderedfemale=female[order(female[,2]),]
orderedmale=male[order(male[,2]),]
orderedwages2=rbind(orderedfemale,orderedmale)