#This script will give the unique gender/years experience combinations from wages.csv
wages<-read.csv(file="wages.csv",header=TRUE,stringsAsFactors = FALSE)
highschool<-wages[wages$yearsSchool==12, ]
highschoolminwage<-min(highschool$wage)
college<-wages[wages$yearsSchool==16, ]
collegeminwage<-min(college$wage)
collegeminwage-highschoolminwage
