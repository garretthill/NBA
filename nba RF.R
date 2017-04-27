

rm(list=ls())

yes=read.csv('YES.csv')


jjj12=read.csv('joined12.csv')
jjj13=read.csv('joined13.csv')
jjj14=read.csv('joined.csv')
jjj15=read.csv('joined15 new.csv')



ALLIDS=rbind(jjj12,jjj13,jjj14,jjj15)
myvars=c('game_id','home_team_pts','away_team_pts')
ALLIDS2=ALLIDS[myvars]

new=merge(yes,ALLIDS2,by='game_id')
n=nrow(new)
new$season=NA
new$season[1:1074]='2012-2013'
new$season[1075:2148]='2013-2014'
new$season[2149:3220]='2014-2015'
new$season[3220:n]='2015-2016'

age=read.csv('age.csv')
night=read.csv('m.csv')
help=read.csv('ids away.csv')



age2=merge(help, age, by=c("awayteam"))

age2$season=as.character(age2$season)

new=merge(new, age2, by=c("awayteam_id","season"))

new=merge(new,night,by='city.x')

new$night=as.factor(new$night)
new$cat=as.factor(new$cat)

new$total_points=new$home_team_pts+new$away_team_pts

new <- new[order(new$game_id),] 

write.csv(new,'trying stuff here.csv')

ref=read.csv('ref.csv')

new=merge(new,ref,by='game_id')

new$ref_one_id=as.factor(new$ref_one_id)
new$ref_two_id=as.factor(new$ref_two_id)
new$ref_three_id=as.factor(new$ref_three_id)



lines=read.csv('lines2015.csv')

new2015=new[3285:3485,]

new2015$date.x=as.Date(new2015$date.x,format='%a %b %d %Y')

lines$date.x=as.Date(lines$date.x,format='%a %b %d %Y')

newtest2015=merge(new2015,lines,by=c('date.x','city.x'))


new2=new[1:3284,]

write.csv(new2,'new2.csv')

new2=read.csv('new2.csv')
  
new1=new[1:3517,]

newtest=new[3518:3530,]

newtest2015$ref_three_id=as.numeric(newtest2015$ref_three_id)

new2$ref_three_id=as.numeric(new2$ref_three_id)

x=newtest2015$ref_two_id[!new2$ref_two_id %in% newtest2015$ref_two_id]
x=unique(x)
x

install.packages('randomForest')
library(randomForest)



set.seed(415)

fit <- randomForest(total_points ~ hometeam_offrtg+hometeam_defrtg+hometeam_pace+hometeam_fg3m + hometeam_fg3mSD
                    + awayteam_offrtg+awayteam_defrtg+awayteam_pace+awayteam_fg3m +awayteam_fg3mSD
                    + hometeam_travelinpastfive+ hometeam_travelinpastten+ hometeam_gamesinpastfive
                    + hometeam_gamesinpastten
                    + awayteam_travelinpastfive+ awayteam_travelinpastten+ awayteam_gamesinpastfive
                    + awayteam_gamesinpastten
                    + hometeam_fg3m_opp + hometeam_fg3m_oppSD
                    + awayteam_fg3m_opp + awayteam_fg3m_oppSD
                    +ref_one_id +ref_two_id +ref_three_id
                    
                    
                    
                    
                    
                    
                    
                    
                    
                  
                    
                   
                    ,data=new2,mtry=10,ntree=2000)

fit2 <- lm(total_points ~ hometeam_offrtg+hometeam_defrtg+hometeam_pace+hometeam_fg3m + hometeam_fg3mSD
                    + awayteam_offrtg+awayteam_defrtg+awayteam_pace+awayteam_fg3m +awayteam_fg3mSD
                    + hometeam_travelinpastfive+ hometeam_travelinpastten+ hometeam_gamesinpastfive
                    + hometeam_gamesinpastten
                    + awayteam_travelinpastfive+ awayteam_travelinpastten+ awayteam_gamesinpastfive
                    + awayteam_gamesinpastten
                    + hometeam_fg3m_opp + hometeam_fg3m_oppSD
                    + awayteam_fg3m_opp + awayteam_fg3m_oppSD
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    ,data=new1)


newtest$prediction=predict(fit, newtest,type='response')
newtest$prediction2=predict(fit2, newtest,type='response')

newtest2015$pred=predict(fit,newtest2015,type='response')

write.csv(newtest2015,'looking at lines.csv')

c=newtest[,1]
a=newtest[,8:9]
rf=newtest[,327]
lmmod=newtest[,328]
j=cbind(c,a,rf,lmmod)

write.csv(j,'jola 1226.csv')

summary(fit)

smallertest$prediction=predict(fit, smallertest,type='response')

todaytest$prediction=predict(fit, todaytest,type='response')

a=smallertest[,1]
a=as.character(a)
c=smallertest[,11]
c=as.character(c)
b=smallertest[,326:327]

j2=cbind(a,c,b)


write.csv(j2,'jola2 smaller dos.csv')

saveRDS(fit, "my-fitted-rf for betting.rds")


fit <- readRDS("my-fitted-rf.rds")
