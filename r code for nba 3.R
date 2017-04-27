


http://stats.nba.com/stats/boxscoretraditionalv2?EndPeriod=10&EndRange=28800&GameID=0021300001&RangeType=2&Season=2013-14&SeasonType=Regular+Season&StartPeriod=1&StartRange=0

for(i in 1:10){
  
  urlchanger2=21300000+i
  
  url <- paste("http://stats.nba.com/stats/boxscoretraditionalv2?EndPeriod=10&EndRange=28800&GameID=00",urlchanger2,"&RangeType=2&Season=2013-14&SeasonType=Regular+Season&StartPeriod=1&StartRange=0", sep="")
  
  # read url and convert to data.frame
  document = fromJSON(file=url, method = "C", unexpected.escape = "error")
  
  game_id[i]=document$resultSets[[2]]$rowSet[[1]][[1]]
  home_team_id[i]=document$resultSets[[2]]$rowSet[[1]][[2]]
  home_team_name[i]=document$resultSets[[2]]$rowSet[[1]][[3]]
  home_team_abbrev[i]=document$resultSets[[2]]$rowSet[[1]][[4]]
  home_team_city[i]=document$resultSets[[2]]$rowSet[[1]][[5]]
  home_team_min[i]=document$resultSets[[2]]$rowSet[[1]][[6]]
  home_team_fgm[i]=document$resultSets[[2]]$rowSet[[1]][[7]]
  home_team_fga[i]=document$resultSets[[2]]$rowSet[[1]][[8]]
  home_team_fg_pct[i]=document$resultSets[[2]]$rowSet[[1]][[9]]
  home_team_fg3m[i]=document$resultSets[[2]]$rowSet[[1]][[10]]
  home_team_fg3a[i]=document$resultSets[[2]]$rowSet[[1]][[11]]
  home_team_fg3_pct[i]=document$resultSets[[2]]$rowSet[[1]][[12]]
  home_team_ftm[i]=document$resultSets[[2]]$rowSet[[1]][[13]]
  home_team_fta[i]=document$resultSets[[2]]$rowSet[[1]][[14]]
  home_team_ft_pct[i]=document$resultSets[[2]]$rowSet[[1]][[15]]
  home_team_oreb[i]=document$resultSets[[2]]$rowSet[[1]][[16]]
  home_team_dreb[i]=document$resultSets[[2]]$rowSet[[1]][[17]]
  home_team_reb[i]=document$resultSets[[2]]$rowSet[[1]][[18]]
  home_team_reb[i]=document$resultSets[[2]]$rowSet[[1]][[19]]
  home_team_stl[i]=document$resultSets[[2]]$rowSet[[1]][[20]]
  home_team_blk[i]=document$resultSets[[2]]$rowSet[[1]][[21]]
  home_team_to[i]=document$resultSets[[2]]$rowSet[[1]][[22]]
  home_team_fouls[i]=document$resultSets[[2]]$rowSet[[1]][[23]]
  home_team_pts[i]=document$resultSets[[2]]$rowSet[[1]][[24]]
  home_team_margin[i]=document$resultSets[[2]]$rowSet[[1]][[25]]
  
  
  away_team_id[i]=document$resultSets[[2]]$rowSet[[2]][[2]]
  away_team_name[i]=document$resultSets[[2]]$rowSet[[2]][[3]]
  away_team_abbrev[i]=document$resultSets[[2]]$rowSet[[2]][[4]]
  away_team_city[i]=document$resultSets[[2]]$rowSet[[2]][[5]]
  away_team_min[i]=document$resultSets[[2]]$rowSet[[2]][[6]]
  away_team_fgm[i]=document$resultSets[[2]]$rowSet[[2]][[7]]
  away_team_fga[i]=document$resultSets[[2]]$rowSet[[2]][[8]]
  away_team_fg_pct[i]=document$resultSets[[2]]$rowSet[[2]][[9]]
  away_team_fg3m[i]=document$resultSets[[2]]$rowSet[[2]][[10]]
  away_team_fg3a[i]=document$resultSets[[2]]$rowSet[[2]][[11]]
  away_team_fg3_pct[i]=document$resultSets[[2]]$rowSet[[2]][[12]]
  away_team_ftm[i]=document$resultSets[[2]]$rowSet[[2]][[13]]
  away_team_fta[i]=document$resultSets[[2]]$rowSet[[2]][[14]]
  away_team_ft_pct[i]=document$resultSets[[2]]$rowSet[[2]][[15]]
  away_team_oreb[i]=document$resultSets[[2]]$rowSet[[2]][[16]]
  away_team_dreb[i]=document$resultSets[[2]]$rowSet[[2]][[17]]
  away_team_reb[i]=document$resultSets[[2]]$rowSet[[2]][[18]]
  away_team_reb[i]=document$resultSets[[2]]$rowSet[[2]][[19]]
  away_team_stl[i]=document$resultSets[[2]]$rowSet[[2]][[20]]
  away_team_blk[i]=document$resultSets[[2]]$rowSet[[2]][[21]]
  away_team_to[i]=document$resultSets[[2]]$rowSet[[2]][[22]]
  away_team_fouls[i]=document$resultSets[[2]]$rowSet[[2]][[23]]
  away_team_pts[i]=document$resultSets[[2]]$rowSet[[2]][[24]]
  away_team_margin[i]=document$resultSets[[2]]$rowSet[[2]][[25]]
  
}

fullgame13=data.frame(game_id,
                  home_team_id,
                  home_team_name,
                  home_team_abbrev,
                  home_team_city,
                  home_team_min,
                  home_team_fgm,
                  home_team_fga,
                  home_team_fg_pct,
                  home_team_fg3m,
                  home_team_fg3a,
                  home_team_fg3_pct,
                  home_team_ftm,
                  home_team_fta,
                  home_team_ft_pct,
                  home_team_oreb,
                  home_team_dreb,
                  home_team_reb,
                  home_team_reb,
                  home_team_stl,
                  home_team_blk,
                  home_team_to,
                  home_team_fouls,
                  home_team_pts,
                  home_team_margin,
                  game_id,
                  away_team_id,
                  away_team_name,
                  away_team_abbrev,
                  away_team_city,
                  away_team_min,
                  away_team_fgm,
                  away_team_fga,
                  away_team_fg_pct,
                  away_team_fg3m,
                  away_team_fg3a,
                  away_team_fg3_pct,
                  away_team_ftm,
                  away_team_fta,
                  away_team_ft_pct,
                  away_team_oreb,
                  away_team_dreb,
                  away_team_reb,
                  away_team_reb,
                  away_team_stl,
                  away_team_blk,
                  away_team_to,
                  away_team_fouls,
                  away_team_pts,
                  away_team_margin
                  
)

away_team_fullname=paste(fullgame13$away_team_city,fullgame13$away_team_name,sep=" ")
home_team_fullname=paste(fullgame13$home_team_city,fullgame13$home_team_name,sep=" ")
totalpoints=fullgame13$away_team_pts+fullgame13$home_team_pts
away_team_fullname

fullgame13new=cbind(fullgame13,away_team_fullname,home_team_fullname,totalpoints)



ALL=merge(fullgame13new,realnbaschedule13,by=c("totalpoints","away_team_fullname","home_team_fullname","away_team_pts","home_team_pts"))

newdata13 =subset(fullgame13new, away_team_abbrev=="DAL",
                select=game_id.1:away_team_margin) 