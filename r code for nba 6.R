

load("finished13.RDA")

jj=1:82

mavsaway=subset(finished13,away_team_abbrev=="DAL")


install.packages("TTR")
library(TTR)
nm=sample(1:100, 100, replace=T)
mavsaway$home_team_fgm_WMA=WMA(mavsaway$home_team_fgm, n=10, wilder=FALSE, ratio=NULL)

mavsaway$home_team_fgm_WMA=c("na",mavsaway$home_team_fgm_WMA[1:69])





home_team_fgm_EMA

new111=data.frame(newdata$game_id,home_team_fgm_EMA)
names(new111)=c("game_id","home_team_fgm_EMA")

woo=merge(finished13, new111, by="game_id")
