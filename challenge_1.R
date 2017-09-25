#load the wages.csv file
wages=read.csv(file="wages.csv",header=TRUE, stringsAsFactors=FALSE)

#list only the females from the wages.csv the table to a new female1 table
female1=wages[wages[,1]=="female",]

#list only the gender and yearsExperience columns for females
femaleExperience=(female1[ ,1:2])

#sort the females based on yearsExperience
femaleExperienceOrdered=femaleExperience[
  order( femaleExperience[,2] ),
]

#only list the unique females and yearsExperience combinations
uniqueFemales=unique (femaleExperienceOrdered)



#now we do the same thing for the males
wages=read.csv(file="wages.csv",header=TRUE, stringsAsFactors=FALSE)

#list only the males from the wages.csv the table to a new male1 table
male1=wages[wages[,1]=="male",]

#list only the gender and yearsExperience columns for males
maleExperience=(male1[ ,1:2])

#sort the females based on yearsExperience
maleExperienceOrdered=maleExperience[
  order( maleExperience[,2] ),
  ]

#only list the unique females and yearsExperience combinations
uniqueMales=unique (maleExperienceOrdered)

#combine the unique males and unique females together and print wages1list
#this will write the wages1list that contains the unique gender-yearsExperience
#combinations contained in the wages.csv file
wages1list=merge(uniqueFemales,uniqueMales,all=TRUE)
wages1list

