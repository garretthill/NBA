

rm(list=ls())

setwd("C:/Users/Garrett/Desktop/NBA R Code")

game_id=NULL

ref_one_id=NULL
ref_one_first_name=NULL
ref_one_last_name=NULL
ref_one_jersey=NULL

ref_two_id=NULL
ref_two_first_name=NULL
ref_two_last_name=NULL
ref_two_jersey=NULL

ref_three_id=NULL
ref_three_first_name=NULL
ref_three_last_name=NULL
ref_three_jersey=NULL



library(rvest)


library(rjson)


for(i in 935:1230){
  
urlchanger=21400000 + i
    
url <- paste("http://stats.nba.com/stats/boxscoresummaryv2?GameID=00",urlchanger, sep="")
  
  
  
  # read url and convert to data.frame
  document = fromJSON(file=url, method = "C", unexpected.escape = "error")
  
  game_id[i]=document$resultSets[[1]]$rowSet[[1]][[3]]
  
  ref_one_id[i]=document$resultSets[[3]]$rowSet[[1]][[1]]
  ref_one_first_name[i]=document$resultSets[[3]]$rowSet[[1]][[2]]
  ref_one_last_name[i]=document$resultSets[[3]]$rowSet[[1]][[3]]
  ref_one_jersey[i]=document$resultSets[[3]]$rowSet[[1]][[4]]
  
  ref_two_id[i]=document$resultSets[[3]]$rowSet[[2]][[1]]
  ref_two_first_name[i]=document$resultSets[[3]]$rowSet[[2]][[2]]
  ref_two_last_name[i]=document$resultSets[[3]]$rowSet[[2]][[3]]
  ref_two_jersey[i]=document$resultSets[[3]]$rowSet[[2]][[4]]
  
  ref_three_id[i]=document$resultSets[[3]]$rowSet[[3]][[1]]
  ref_three_first_name[i]=document$resultSets[[3]]$rowSet[[3]][[2]]
  ref_three_last_name[i]=document$resultSets[[3]]$rowSet[[3]][[3]]
  ref_three_jersey[i]=document$resultSets[[3]]$rowSet[[3]][[4]]
  
  
}

ref14=data.frame(game_id,
                  
                  ref_one_id,
                  ref_one_first_name,
                  ref_one_last_name,
                  ref_one_jersey,
                  
                  ref_two_id,
                  ref_two_first_name,
                  ref_two_last_name,
                  ref_two_jersey,
                  
                  ref_three_id,
                  ref_three_first_name,
                  ref_three_last_name,
                  ref_three_jersey
                     
)


write.csv(ref14,'ref14.csv')

                 



rm(list=ls())

setwd("C:/Users/Garrett/Desktop/NBA R Code")

game_id=NULL

ref_one_id=NULL
ref_one_first_name=NULL
ref_one_last_name=NULL
ref_one_jersey=NULL

ref_two_id=NULL
ref_two_first_name=NULL
ref_two_last_name=NULL
ref_two_jersey=NULL

ref_three_id=NULL
ref_three_first_name=NULL
ref_three_last_name=NULL
ref_three_jersey=NULL



library(rvest)


library(rjson)


for(i in 1:1230){
  
  urlchanger=21300000 + i
  
  url <- paste("http://stats.nba.com/stats/boxscoresummaryv2?GameID=00",urlchanger, sep="")
  
  
  
  # read url and convert to data.frame
  document = fromJSON(file=url, method = "C", unexpected.escape = "error")
  
  game_id[i]=document$resultSets[[1]]$rowSet[[1]][[3]]
  
  ref_one_id[i]=document$resultSets[[3]]$rowSet[[1]][[1]]
  ref_one_first_name[i]=document$resultSets[[3]]$rowSet[[1]][[2]]
  ref_one_last_name[i]=document$resultSets[[3]]$rowSet[[1]][[3]]
  ref_one_jersey[i]=document$resultSets[[3]]$rowSet[[1]][[4]]
  
  ref_two_id[i]=document$resultSets[[3]]$rowSet[[2]][[1]]
  ref_two_first_name[i]=document$resultSets[[3]]$rowSet[[2]][[2]]
  ref_two_last_name[i]=document$resultSets[[3]]$rowSet[[2]][[3]]
  ref_two_jersey[i]=document$resultSets[[3]]$rowSet[[2]][[4]]
  
  ref_three_id[i]=document$resultSets[[3]]$rowSet[[3]][[1]]
  ref_three_first_name[i]=document$resultSets[[3]]$rowSet[[3]][[2]]
  ref_three_last_name[i]=document$resultSets[[3]]$rowSet[[3]][[3]]
  ref_three_jersey[i]=document$resultSets[[3]]$rowSet[[3]][[4]]
  
  
}

ref13=data.frame(game_id,
                 
                 ref_one_id,
                 ref_one_first_name,
                 ref_one_last_name,
                 ref_one_jersey,
                 
                 ref_two_id,
                 ref_two_first_name,
                 ref_two_last_name,
                 ref_two_jersey,
                 
                 ref_three_id,
                 ref_three_first_name,
                 ref_three_last_name,
                 ref_three_jersey
                 
)


write.csv(ref13,'ref13.csv')




rm(list=ls())

setwd("C:/Users/Garrett/Desktop/NBA R Code")

game_id=NULL

ref_one_id=NULL
ref_one_first_name=NULL
ref_one_last_name=NULL
ref_one_jersey=NULL

ref_two_id=NULL
ref_two_first_name=NULL
ref_two_last_name=NULL
ref_two_jersey=NULL

ref_three_id=NULL
ref_three_first_name=NULL
ref_three_last_name=NULL
ref_three_jersey=NULL



library(rvest)


library(rjson)


for(i in 1215:1230){
  
  urlchanger=21200000 + i
  
  url <- paste("http://stats.nba.com/stats/boxscoresummaryv2?GameID=00",urlchanger, sep="")
  
  
  
  # read url and convert to data.frame
  document = fromJSON(file=url, method = "C", unexpected.escape = "error")
  
  game_id[i]=document$resultSets[[1]]$rowSet[[1]][[3]]
  
  ref_one_id[i]=document$resultSets[[3]]$rowSet[[1]][[1]]
  ref_one_first_name[i]=document$resultSets[[3]]$rowSet[[1]][[2]]
  ref_one_last_name[i]=document$resultSets[[3]]$rowSet[[1]][[3]]
  ref_one_jersey[i]=document$resultSets[[3]]$rowSet[[1]][[4]]
  
  ref_two_id[i]=document$resultSets[[3]]$rowSet[[2]][[1]]
  ref_two_first_name[i]=document$resultSets[[3]]$rowSet[[2]][[2]]
  ref_two_last_name[i]=document$resultSets[[3]]$rowSet[[2]][[3]]
  ref_two_jersey[i]=document$resultSets[[3]]$rowSet[[2]][[4]]
  
  ref_three_id[i]=document$resultSets[[3]]$rowSet[[3]][[1]]
  ref_three_first_name[i]=document$resultSets[[3]]$rowSet[[3]][[2]]
  ref_three_last_name[i]=document$resultSets[[3]]$rowSet[[3]][[3]]
  ref_three_jersey[i]=document$resultSets[[3]]$rowSet[[3]][[4]]
  
  
}

ref12=data.frame(game_id,
                 
                 ref_one_id,
                 ref_one_first_name,
                 ref_one_last_name,
                 ref_one_jersey,
                 
                 ref_two_id,
                 ref_two_first_name,
                 ref_two_last_name,
                 ref_two_jersey,
                 
                 ref_three_id,
                 ref_three_first_name,
                 ref_three_last_name,
                 ref_three_jersey
                 
)


write.csv(ref12,'ref12.csv')





rm(list=ls())

setwd("C:/Users/Garrett/Desktop/NBA R Code")

game_id=NULL

ref_one_id=NULL
ref_one_first_name=NULL
ref_one_last_name=NULL
ref_one_jersey=NULL

ref_two_id=NULL
ref_two_first_name=NULL
ref_two_last_name=NULL
ref_two_jersey=NULL

ref_three_id=NULL
ref_three_first_name=NULL
ref_three_last_name=NULL
ref_three_jersey=NULL



library(rvest)


library(rjson)


for(i in 1:473){
  
  urlchanger=21500000 + i
  
  url <- paste("http://stats.nba.com/stats/boxscoresummaryv2?GameID=00",urlchanger, sep="")
  
  
  
  # read url and convert to data.frame
  document = fromJSON(file=url, method = "C", unexpected.escape = "error")
  
  game_id[i]=document$resultSets[[1]]$rowSet[[1]][[3]]
  
  ref_one_id[i]=document$resultSets[[3]]$rowSet[[1]][[1]]
  ref_one_first_name[i]=document$resultSets[[3]]$rowSet[[1]][[2]]
  ref_one_last_name[i]=document$resultSets[[3]]$rowSet[[1]][[3]]
  ref_one_jersey[i]=document$resultSets[[3]]$rowSet[[1]][[4]]
  
  ref_two_id[i]=document$resultSets[[3]]$rowSet[[2]][[1]]
  ref_two_first_name[i]=document$resultSets[[3]]$rowSet[[2]][[2]]
  ref_two_last_name[i]=document$resultSets[[3]]$rowSet[[2]][[3]]
  ref_two_jersey[i]=document$resultSets[[3]]$rowSet[[2]][[4]]
  
  ref_three_id[i]=document$resultSets[[3]]$rowSet[[3]][[1]]
  ref_three_first_name[i]=document$resultSets[[3]]$rowSet[[3]][[2]]
  ref_three_last_name[i]=document$resultSets[[3]]$rowSet[[3]][[3]]
  ref_three_jersey[i]=document$resultSets[[3]]$rowSet[[3]][[4]]
  
  
}

ref15=data.frame(game_id,
                 
                 ref_one_id,
                 ref_one_first_name,
                 ref_one_last_name,
                 ref_one_jersey,
                 
                 ref_two_id,
                 ref_two_first_name,
                 ref_two_last_name,
                 ref_two_jersey,
                 
                 ref_three_id,
                 ref_three_first_name,
                 ref_three_last_name,
                 ref_three_jersey
                 
)


write.csv(ref15,'ref15.csv')

ref1=read.csv('ref12.csv')
ref2=read.csv('ref13.csv')
ref3=read.csv('ref14.csv')
ref4=read.csv('ref15.csv')


ref=rbind(ref1,ref2,ref3,ref4)


write.csv(ref,'ref.csv')






