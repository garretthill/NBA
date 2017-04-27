


rm(list=ls())


fourteen1=read.csv('fourteen.csv')

fourteenadvanced1=read.csv('fourteenadvanced.csv')

fourteentogether=merge(fourteen1,fourteenadvanced1, by=c('game_id','home_team_id'))

fourteenscores=read.csv('fourteen scores.csv')

four=merge(fourteentogether,fourteenscores,  by=c('game_id','home_team_id'))


fourteen2=read.csv('fourteen other.csv')

fourteenadvanced2=read.csv('fourteenadvanced other.csv')

fourteentogether2=merge(fourteen2,fourteenadvanced2, by=c('game_id','home_team_id'))

fourteenscores2=read.csv('fourteen scores other.csv')

four2=merge(fourteentogether2,fourteenscores2,  by=c('game_id','home_team_id'))

four$hometeam=paste(four$home_team_city.x,four$home_team_name)
four$awayteam=paste(four$away_team_city.x,four$away_team_name)

four2$hometeam=paste(four2$home_team_city.x,four2$home_team_name)
four2$awayteam=paste(four2$away_team_city.x,four2$away_team_name)

schedule14=read.csv('schedule 14.csv')



fourfour=merge(four,schedule14,by=c('hometeam', 'awayteam','home_team_points','away_team_points'))

fourfour2=merge(four2,schedule14,by=c('hometeam', 'awayteam','home_team_points','away_team_points'))


joined=rbind(fourfour,fourfour2)

write.csv(joined,'joined.csv')


