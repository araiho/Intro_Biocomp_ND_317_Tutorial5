#Monday Activity: Wage for all males and all females 
fwage = 0
mwage = 0

for (i in 1:nrow(wages)){
  if (wages[i,1] == "female"){
    fwage = fwage + wages[i,]$wage
  }
  else if (wages[i,1] == "male"){
    mwage = mwage + wages[i,]$wage
  }

}

#DNA Script

#Initializing Data vectors to empty
sequenceID <- NULL
sequenceLENGTH <- NULL
percentCG <- NULL
meltTEMP <- NULL

#Reading the File
fileName <- "Lecture11.fasta"
readFile<- file(fileName,open="r") #Makng fileName readable
linn <-readLines(readFile) #Setting linn to the lines of conn


#Looping through contents of file
j = 1
k = 1
for (i in 1:length(linn)){
  linn_split <- strsplit(linn[i], "")[[1]] #Splits line into series of characters to be accessed
  
  #Conditional to see if the ith line is a sequence ID
  if(linn_split[1] == ">"){    
    sequenceID[j] = substring(linn[i],5)
    j = j + 1
    
    #Calculations for the base pairs
  } else {
    
    #Getting length of sequence
    sequenceLENGTH[k] = nchar(linn[i], type = "chars")
    
    #Calculating percentCG
    CG = 0
    for (base in linn_split) {
      if (base == "G" || base == "C") {
        CG = CG + 1
      }
    }
    percentCG[k] = CG/sequenceLENGTH[k]*100
    
    #Calculating melting temp
    if (sequenceLENGTH[k] > 14){
      meltTEMP[k] = -9999
    } else {
      meltTEMP[k] = 4*CG + 2*(sequenceLENGTH[k] - CG)
    }
    
    k = k + 1
  }
}
close(readFile)

#Putting everything into a table called DNA.dat
DNA.dat <- data.frame(sequenceID, sequenceLENGTH, percentCG, meltTEMP)
