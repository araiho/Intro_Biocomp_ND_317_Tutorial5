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
min.wage
print("The person with the highest wage is")
max.wage

print("The number of females in the top 10 earners is")
counter

