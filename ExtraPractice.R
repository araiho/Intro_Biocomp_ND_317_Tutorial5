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