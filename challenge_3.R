#load the wages.csv file
wages=read.csv(file="wages.csv",header=TRUE, stringsAsFactors=FALSE)

#only list the years of schoool and the wage for each of the indiv in wages.csv
wages3=wages[,3:4]

#make a list of only those who have graduated from HS (12 years of school)
HSgrads=wages3[wages3[,1]=="12",]

#make a list of only those who have graduated from college (16 years of school)
collegeGrads=wages3[wages3[,1]=="16",]

#find the average minimum wage of HS grads and college grads
var1=mean(collegeGrads[,2])
var2=mean(HSgrads[,2])


#subtract the avg min wage of college grads - HS grads and print
effect_of_grad_college=var1-var2
message("effect of graduating college on minimum wage")
effect_of_grad_college
