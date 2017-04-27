


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


for(i in 1028:1042){
  
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


write.csv(ref15,'ref15 2 add .csv')
