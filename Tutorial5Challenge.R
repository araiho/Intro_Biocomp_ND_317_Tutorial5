#Reading in the Data (make sure your working directory is correct)
wages=read.csv(file="wages.csv", header = TRUE, stringsAsFactors = FALSE)
attach(wages)

#Part 1
data1 <- wages[order(gender,yearsExperience),]
data1 <- (data1[,1:2])
UNIQUE <- unique(data1)
write.table(UNIQUE, file = "Tutorial5Output.dat", sep = " ")

#Part 2
data2 <- wages[order(wage),]
min.wage <- data2[1,]
max.wage <- data2[nrow(wages),]
bottom = nrow(wages) -9
top = nrow(wages)
top.10 <- data2[bottom:top,]

counter = 0
for (i in 1:10){
  if (top.10[i,]$gender == "female") {
    counter = counter + 1
  }
}
print("The person with the lowest wage is")
min.wage[,c(1,2,4)]
print("The person with the highest wage is")
max.wage[,c(1,2,4)]

print("The number of females in the top 10 earners is")
counter

#Part 3
highSchoolWages <- NULL
collegeWages <- NULL

j = 1
k = 1
for (i in 1:nrow(wages)){
  if (wages[i,3] == "12"){
    highSchoolWages[j] = wages [i,4]
    j = j+1
  }else if (wages[i,3] == "16"){
    collegeWages[k] = wages[i,4]
    k = k+1
  }
}

print("The minimum wage of a high school graduate is:")
min(highSchoolWages)
print("The minimum wage of a college graduate is:")
min(collegeWages)
print("The difference in these wages is")
min(collegeWages) - min(highSchoolWages)