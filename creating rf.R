
rm(list=ls())
# ensure the results are repeatable
set.seed(415)
# load the library
####install.packages('mlbench')
###install.packages('caret')

library(mlbench)
library(caret)
library(plyr)
library(dplyr)
# load the data
data(new2)
# define the control using a random forest selection function
control <- rfeControl(functions=rfFuncs, method="cv", number=10)
# run the RFE algorithm
new2[,80]

new3=new2[1:10,]

new3[,cols]

write.csv(new2,'new222222.csv')
cols <- c(12,20,66)
results <- rfe(new3[,cols], new3[,474], sizes=c(1:3), rfeControl=control)
# summarize the results
print(results)
# list the chosen features
predictors(results)
# plot the results
plot(results, type=c("g", "o"))
