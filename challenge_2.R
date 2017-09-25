#load the wages.csv file
wages=read.csv(file="wages.csv",header=TRUE, stringsAsFactors=FALSE)

#remove the years of school column from the wages.csv file
noYrsSchool=wages[, -c(3)]

#find the highest earner by sorting the file without yrs of school and selecting last row
earners=noYrsSchool[
  order( noYrsSchool[,3] ),
  ]

highestEarner=tail(earners, n=1)


#find the lowest earner by sorting the earners table and selecting the first row
lowestEarner=head(earners, n=1)

#print the top ten earners
TopTen=tail(earners, n=10)
#find the females in the top ten earners and count how many there are
TopTenFemales=TopTen[TopTen[,1]=="female",]
  nrow(TopTenFemales)
  
  
#and finally, print all of the output
message("higestEarner:")
highestEarner

message("lowestEarner:")
lowestEarner

message("the number of females in the top ten earners in this data set:")
nrow(TopTenFemales)
