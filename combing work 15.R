


rm(list=ls())


fifteen1=read.csv('fifteen.csv')

fifteenadvanced1=read.csv('fifteenadvanced.csv')


fifteentogether=merge(fifteen1,fifteenadvanced1, by=c('game_id','home_team_id'))

fifteenscores=read.csv('fifteen scores.csv')


four=merge(fifteentogether,fifteenscores,  by=c('game_id','home_team_id'))


fifteen2=read.csv('fifteen other.csv')


fifteenadvanced2=read.csv('fifteenadvanced other.csv')


fifteentogether2=merge(fifteen2,fifteenadvanced2, by=c('game_id','home_team_id'))

fifteenscores2=read.csv('fifteen scores other.csv')


four2=merge(fifteentogether2,fifteenscores2,  by=c('game_id','home_team_id'))

four$hometeam=paste(four$home_team_city.x,four$home_team_name)
four$awayteam=paste(four$away_team_city.x,four$away_team_name)

four2$hometeam=paste(four2$home_team_city.x,four2$home_team_name)
four2$awayteam=paste(four2$away_team_city.x,four2$away_team_name)

schedule14=read.csv('schedule 15.csv')



fourfour=merge(four,schedule14,by=c('hometeam', 'awayteam','home_team_points','away_team_points'))

fourfour2=merge(four2,schedule14,by=c('hometeam', 'awayteam','home_team_points','away_team_points'))


joined=rbind(fourfour,fourfour2)

a=which(joined$game_id==21500498 & joined$hometeam=='Detroit Pistons')


joined=joined[-a,]

b=which(joined$game_id==21500054& joined$awayteam=='Detroit Pistons')

joined=joined[-b,]


write.csv(joined,'joined15 new.csv')
