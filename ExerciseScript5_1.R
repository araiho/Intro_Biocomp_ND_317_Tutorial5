#This script will give the unique gender/years experience combinations from wages.csv
wages<-read.csv(file="wages.csv",header=TRUE,stringsAsFactors = FALSE)
females<-wages[wages$gender=="female",]
orderedyears<-order(females$yearsExperience)
orderedfemales<-females[orderedyears,1:2 ]
uniquefemales<-unique(orderedfemales,incomparables=FALSE)
males<-wages[wages$gender=="male", ]
orderedyearsm<-order(males$yearsExperience)
orderedmales<-males[orderedyearsm,1:2]
uniquemales<-unique(orderedmales,incomparables = FALSE)
totalunique<-rbind(uniquefemales,uniquemales)
write.table(totalunique,file="totalunique.txt")
