#This script will give the unique gender/years experience combinations from wages.csv
wages<-read.csv(file="wages.csv",header=TRUE,stringsAsFactors = FALSE)
females<-wages[wages$gender=="female",]
orderedfemales<-females[order(females$yearsExperience),1:2]
uniquefemales<-unique(orderedfemales,incomparables=FALSE)
males<-wages[wages$gender=="male", ]
orderedmales<-males[order(males$yearsExperience),1:2]
uniquemales<-unique(orderedmales,incomparables = FALSE)
totalunique<-rbind(uniquefemales,uniquemales)
write.table(totalunique,file="totalunique.txt")