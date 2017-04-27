


rm(list=ls())

game_id=NULL
home_team_id=NULL
home_team_name=NULL
home_team_abbrev=NULL
home_team_city=NULL
home_team_min=NULL
home_team_offrtg=NULL
home_team_defrtg=NULL
home_team_netrtg=NULL
home_team_astpct=NULL
home_team_astto=NULL
home_team_astratio=NULL
home_team_orebpct=NULL
home_team_drebpct=NULL
home_team_rebpct=NULL
home_team_toratio=NULL
home_team_efffgpct=NULL
home_team_tspct=NULL
home_team_usg=NULL
home_team_pace=NULL
home_team_pie=NULL
game_id=NULL
away_team_id=NULL
away_team_name=NULL
away_team_abbrev=NULL
away_team_city=NULL
away_team_min=NULL
away_team_offrtg=NULL
away_team_defrtg=NULL
away_team_netrtg=NULL
away_team_astpct=NULL
away_team_astto=NULL
away_team_astratio=NULL
away_team_orebpct=NULL
away_team_drebpct=NULL
away_team_rebpct=NULL
away_team_toratio=NULL
away_team_efffgpct=NULL
away_team_tspct=NULL
away_team_usg=NULL
away_team_pace=NULL
away_team_pie=NULL



library(rvest)


library(rjson)


for(i in 329:332){
  
  urlchanger=21500000+i
  
  url <- paste("http://stats.nba.com/stats/boxscoreadvancedv2?EndPeriod=10&EndRange=14400&GameID=00",urlchanger,"&RangeType=2&Season=2015-16&SeasonType=Regular+Season&StartPeriod=1&StartRange=0000", sep="")
  
  # read url and convert to data.frame
  document = fromJSON(file=url, method = "C", unexpected.escape = "error")
  
  game_id[i]=document$resultSets[[2]]$rowSet[[1]][[1]]
  away_team_id[i]=document$resultSets[[2]]$rowSet[[1]][[2]]
  away_team_name[i]=document$resultSets[[2]]$rowSet[[1]][[3]]
  away_team_abbrev[i]=document$resultSets[[2]]$rowSet[[1]][[4]]
  away_team_city[i]=document$resultSets[[2]]$rowSet[[1]][[5]]
  away_team_min[i]=document$resultSets[[2]]$rowSet[[1]][[6]]
  away_team_offrtg[i]=document$resultSets[[2]]$rowSet[[1]][[7]]
  away_team_defrtg[i]=document$resultSets[[2]]$rowSet[[1]][[8]]
  away_team_netrtg[i]=document$resultSets[[2]]$rowSet[[1]][[9]]
  away_team_astpct[i]=document$resultSets[[2]]$rowSet[[1]][[10]]
  away_team_astto[i]=document$resultSets[[2]]$rowSet[[1]][[11]]
  away_team_astratio[i]=document$resultSets[[2]]$rowSet[[1]][[12]]
  away_team_orebpct[i]=document$resultSets[[2]]$rowSet[[1]][[13]]
  away_team_drebpct[i]=document$resultSets[[2]]$rowSet[[1]][[14]]
  away_team_rebpct[i]=document$resultSets[[2]]$rowSet[[1]][[15]]
  away_team_toratio[i]=document$resultSets[[2]]$rowSet[[1]][[16]]
  away_team_efffgpct[i]=document$resultSets[[2]]$rowSet[[1]][[17]]
  away_team_tspct[i]=document$resultSets[[2]]$rowSet[[1]][[18]]
  away_team_usg[i]=document$resultSets[[2]]$rowSet[[1]][[19]]
  away_team_pace[i]=document$resultSets[[2]]$rowSet[[1]][[20]]
  away_team_pie[i]=document$resultSets[[2]]$rowSet[[1]][[21]]
  
  
  home_team_id[i]=document$resultSets[[2]]$rowSet[[2]][[2]]
  home_team_name[i]=document$resultSets[[2]]$rowSet[[2]][[3]]
  home_team_abbrev[i]=document$resultSets[[2]]$rowSet[[2]][[4]]
  home_team_city[i]=document$resultSets[[2]]$rowSet[[2]][[5]]
  home_team_min[i]=document$resultSets[[2]]$rowSet[[2]][[6]]
  home_team_offrtg[i]=document$resultSets[[2]]$rowSet[[2]][[7]]
  home_team_defrtg[i]=document$resultSets[[2]]$rowSet[[2]][[8]]
  home_team_netrtg[i]=document$resultSets[[2]]$rowSet[[2]][[9]]
  home_team_astpct[i]=document$resultSets[[2]]$rowSet[[2]][[10]]
  home_team_astto[i]=document$resultSets[[2]]$rowSet[[2]][[11]]
  home_team_astratio[i]=document$resultSets[[2]]$rowSet[[2]][[12]]
  home_team_orebpct[i]=document$resultSets[[2]]$rowSet[[2]][[13]]
  home_team_drebpct[i]=document$resultSets[[2]]$rowSet[[2]][[14]]
  home_team_rebpct[i]=document$resultSets[[2]]$rowSet[[2]][[15]]
  home_team_toratio[i]=document$resultSets[[2]]$rowSet[[2]][[16]]
  home_team_efffgpct[i]=document$resultSets[[2]]$rowSet[[2]][[17]]
  home_team_tspct[i]=document$resultSets[[2]]$rowSet[[2]][[18]]
  home_team_usg[i]=document$resultSets[[2]]$rowSet[[2]][[19]]
  home_team_pace[i]=document$resultSets[[2]]$rowSet[[2]][[20]]
  home_team_pie[i]=document$resultSets[[2]]$rowSet[[2]][[21]]
  
  
}





twelve=data.frame(game_id,
                  home_team_id,
                  home_team_name,
                  home_team_abbrev,
                  home_team_city,
                  home_team_min,
                  home_team_offrtg,
                  home_team_defrtg,
                  home_team_netrtg,
                  home_team_astpct,
                  home_team_astto,
                  home_team_astratio,
                  home_team_orebpct,
                  home_team_drebpct,
                  home_team_rebpct,
                  home_team_toratio,
                  home_team_efffgpct,
                  home_team_tspct,
                  home_team_usg,
                  home_team_pace,
                  home_team_pie,
                  game_id,
                  away_team_id,
                  away_team_name,
                  away_team_abbrev,
                  away_team_city,
                  away_team_min,
                  away_team_offrtg,
                  away_team_defrtg,
                  away_team_netrtg,
                  away_team_astpct,
                  away_team_astto,
                  away_team_astratio,
                  away_team_orebpct,
                  away_team_drebpct,
                  away_team_rebpct,
                  away_team_toratio,
                  away_team_efffgpct,
                  away_team_tspct,
                  away_team_usg,
                  away_team_pace,
                  away_team_pie
                  
)


write.csv(twelve,'fifteenadvanced add.csv')
