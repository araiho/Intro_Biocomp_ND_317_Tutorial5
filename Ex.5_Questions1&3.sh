#Exercise5_Question1

# Set working directory
setwd("~/Desktop/data-shell/Exercise5/Intro_Biocomp_ND_317_Tutorial5/Intro_Biocomp_ND_317_Tutorial5/")
x = read.csv(file = "wages.csv")

#Alternatively sort by gender and then years experience in one function:
ordered_list <- x[order(x$gender, x$yearsExperience), c(1,2)]

#Write unique gender-yearsExperience combinations to a text file called "Exercise5_Challenge1.txt"
write.table(unique(ordered_list), "Exercise5_Challenge1.txt", quote = FALSE, row.names = FALSE)

#Exercise5_Question2

#Sort by wages
sort_earns = x[order(x$wage), c(1,2,4)]

#Sort by highest and lowest wage
highest_earner = tail(sort_earns, n=1)
print(paste0("Highest Earner: ", highest_earner))

lowest_earner = head(sort_earns, n=1)
print(paste0("Lowest Earner: ', lowest_earner))

#Number of females in top 10
top10 = tail(sort_earns, n=10)
topF=factor(top10$gender=="female")
topFnumber=table(topF)["TRUE"]
print(paste0("Number of females in top wages: ", topFnumber))

#Exercise5_Question3

# Set working directory
setwd("~/Desktop/data-shell/Exercise5/Intro_Biocomp_ND_317_Tutorial5/")

#Read file
x = read.csv(file = "wages.csv")

#Sort by years schooling and then wage in one function:
School.Effect <- x[order(x$yearsSchool, x$wage), c(3,4)]

#Subset 12 years of schooling 
Twelve <- subset(School.Effect, yearsSchool == "12", c(1,2))

#Subset 16 years of schooling 
Sixteen <- subset(School.Effect, yearsSchool == "16", c(1,2))

#List minimum wage from 12 years subset
MinWage12 <- head(Twelve, n=1)
print(paste0("Min. wage with 12 years school: ", MinWage12$wage))


#List minimum wage from 16 years subset
MinWage16 <- head(Sixteen, n=1)
print(paste0("Min. wage with 16 years school: ", MinWage16$wage))
