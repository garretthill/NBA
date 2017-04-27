

rm(list=ls())


joined=read.csv('joined.csv')

library(dplyr)

for (k in 1:30)

{
hawkshome=filter(joined,joined$home_team_id==1610612736 + k)

a=hawkshome[,6:7]
b=hawkshome[,13:31]
c=hawkshome[,62:76]
d=hawkshome[,32:33]
e=hawkshome[,38:56]
f=hawkshome[,83:97]
date=hawkshome[,109]
city=as.character(hawkshome[,11])


tot=cbind(a,b,c,d,e,f,date,city)

tot[36]


hawksaway=filter(joined,joined$away_team_id==1610612736 +k)

a=hawksaway[,32:33]
b=hawksaway[,38:56]
c=hawksaway[,83:97]
d=hawksaway[,6:7]
e=hawksaway[,13:31]
f=hawksaway[,62:76]
date=hawksaway[,109]
city=as.character(hawksaway[,11])

tot1=cbind(a,b,c,d,e,f,date,city)


names(tot1)



names(tot) <- c("game_id" ,       "team_id",     "team_fgm"   ,   "team_fga" ,    
                "team_fg_pct" ,  "team_fg3m"   ,  "team_fg3a"   ,  "team_fg3_pct" ,
                "team_ftm"    ,  "team_fta"     , "team_ft_pct" ,  "team_oreb"    ,
                "team_dreb"   ,  "team_reb"     , "team_reb.1"  ,  "team_stl"     ,
                "team_blk"    ,  "team_to"      , "team_fouls"  ,  "team_pts"     ,
                "team_margin" ,  "team_offrtg"  , "team_defrtg" ,  "team_netrtg"  ,
                "team_astpct" ,  "team_astto"   , "team_astratio" ,"team_orebpct" ,
                "team_drebpct",  "team_rebpct"  , "team_toratio",  "team_efffgpct",
                "team_tspct"  ,  "team_usg"     , "team_pace"    , "team_pie" ,
                "game_id_opp" ,  "team_id_opp",  "team_fgm_opp"   , "team_fga_opp" ,    
                "team_fg_pct_opp" ,  "team_fg3m_opp"   ,  "team_fg3a_opp"   ,  "team_fg3_pct_opp" ,
                "team_ftm_opp"    ,  "team_fta_opp"     , "team_ft_pct_opp" ,  "team_oreb_opp"    ,
                "team_dreb_opp"   ,  "team_reb_opp"     , "team_reb.1_opp"  ,  "team_stl_opp"     ,
                "team_blk_opp"    ,  "team_to_opp"      , "team_fouls_opp"  ,  "team_pts_opp"     ,
                "team_margin_opp" ,  "team_offrtg_opp"  , "team_defrtg_opp" ,  "team_netrtg_opp"  ,
                "team_astpct_opp" ,  "team_astto_opp"   , "team_astratio_opp" ,"team_orebpct_opp" ,
                "team_drebpct_opp",  "team_rebpct_opp"  , "team_toratio_opp",  "team_efffgpct_opp",
                "team_tspct_opp"  ,  "team_usg_opp"     , "team_pace_opp"    , "team_pie_opp" ,     
                "date"        ,       "city" )

names(tot1) <- c("game_id" ,       "team_id",     "team_fgm"   ,   "team_fga" ,    
                 "team_fg_pct" ,  "team_fg3m"   ,  "team_fg3a"   ,  "team_fg3_pct" ,
                 "team_ftm"    ,  "team_fta"     , "team_ft_pct" ,  "team_oreb"    ,
                 "team_dreb"   ,  "team_reb"     , "team_reb.1"  ,  "team_stl"     ,
                 "team_blk"    ,  "team_to"      , "team_fouls"  ,  "team_pts"     ,
                 "team_margin" ,  "team_offrtg"  , "team_defrtg" ,  "team_netrtg"  ,
                 "team_astpct" ,  "team_astto"   , "team_astratio" ,"team_orebpct" ,
                 "team_drebpct",  "team_rebpct"  , "team_toratio",  "team_efffgpct",
                 "team_tspct"  ,  "team_usg"     , "team_pace"    , "team_pie" ,
                 "game_id_opp" ,  "team_id_opp",  "team_fgm_opp"   , "team_fga_opp" ,    
                 "team_fg_pct_opp" ,  "team_fg3m_opp"   ,  "team_fg3a_opp"   ,  "team_fg3_pct_opp" ,
                 "team_ftm_opp"    ,  "team_fta_opp"     , "team_ft_pct_opp" ,  "team_oreb_opp"    ,
                 "team_dreb_opp"   ,  "team_reb_opp"     , "team_reb.1_opp"  ,  "team_stl_opp"     ,
                 "team_blk_opp"    ,  "team_to_opp"      , "team_fouls_opp"  ,  "team_pts_opp"     ,
                 "team_margin_opp" ,  "team_offrtg_opp"  , "team_defrtg_opp" ,  "team_netrtg_opp"  ,
                 "team_astpct_opp" ,  "team_astto_opp"   , "team_astratio_opp" ,"team_orebpct_opp" ,
                 "team_drebpct_opp",  "team_rebpct_opp"  , "team_toratio_opp",  "team_efffgpct_opp",
                 "team_tspct_opp"  ,  "team_usg_opp"     , "team_pace_opp"    , "team_pie_opp" ,     
                 "date"        ,       "city" )

tottot=rbind(tot,tot1)

tottot$dates=as.Date(tottot$date,format = "%a %b %d %Y")

str(tottot)

newdata <- tottot[order(tottot$game_id),]

z=nrow(newdata)
z=as.numeric(z)
y=z-1
y=as.numeric(y)

library(TTR)


A=function(x) SMA(x,n=10)

jjj=data.frame(newdata[1:2], lapply(newdata[3:36], A),newdata[37:38],lapply(newdata[39:72],A),newdata[73:75] )


j77=data.frame(newdata[11:z,1:2],jjj[10:y,3:72],newdata[11:z,73:75])

tot2=newdata
for (i in 1:z)
{
  for (j in 3:36)
  {
    tot2[i+1,j]=mean(newdata[1:i,j])
    
  }
}
for (i in 1:z)
{
  for (j in 39:72)
  {
    tot2[i+1,j]=mean(newdata[1:i,j])
    
  }
}

air=read.csv('airports2.csv',header=T)

j7=merge(jjj,air,by='city',all=T)

j72=unique(j7)

library(geosphere)

j60 <- j72[order(j72$game_id),]

for (i in 1:y)
{
j60$distance[i+1]=distHaversine(c(j60[i,77],j60[i,76]),c(j60[i+1,77],j60[i+1,76]))
}

j60$distance[1]=0

j60$pastfivedays=j60$dates-5
j60$pasttendays=j60$dates-10

j60$counterfive=FALSE
j60$counterfive[1:6]=(j60$dates[1:6] >= j60$pastfivedays[6])

for (i in 1:z)
{
  j60$counterfive=FALSE
  j60$counterfive[1:i]=(j60$dates[1:i] >= j60$pastfivedays[i])
  j60$travelinpastfive[i]=sum(j60$counterfive*j60$distance)
}

for (i in 1:z)
{
  j60$counterten=FALSE
  j60$counterten[1:i]=(j60$dates[1:i] >= j60$pasttendays[i])
  j60$travelinpastten[i]=sum(j60$counterten*j60$distance)
}


  
for(i in 1:z)
{
  j60$gamesinpastfive[i]=sum(j60$dates[1:i] > j60$pastfivedays[i])
}

for(i in 1:z)
{
  j60$gamesinpastten[i]=sum(j60$dates[1:i] > j60$pasttendays[i])
}



jjj61=data.frame(newdata[1:2],rollapplyr(newdata[3:36], 10, sd, fill = 0),newdata[37:38],rollapplyr(newdata[39:72], 10, sd, fill = 0),newdata[73:75] )

jjj61[37]


done=data.frame(j60[11:z,1:2],j60[10:y,3:37],j60[11:z,38:39],j60[10:y,40:73],j60[11:z,74:86])

donesd=data.frame(jjj61[11:z,1:2],jjj61[10:y,3:36],jjj61[11:z,37:38],jjj61[10:y,39:72],jjj61[11:z,73:75])

names(donesd) = c("game_id",           "team_id",           "team_fgmSD",          "team_fgaSD",          "team_fg_pctSD"   ,   
 "team_fg3mSD",         "team_fg3aSD"     ,    "team_fg3_pctSD"     , "team_ftmSD"    ,      "team_ftaSD"         ,
 "team_ft_pctSD",       "team_orebSD"      ,   "team_drebSD"       ,  "team_rebSD"     ,     "team_reb.1SD"       ,
 "team_stlSD" ,         "team_blkSD"      ,    "team_toSD"        ,   "team_foulsSD"    ,    "team_ptsSD"         ,
 "team_marginSD",       "team_offrtgSD"   ,    "team_defrtgSD"     ,  "team_netrtgSD"    ,   "team_astpctSD"      ,
 "team_asttoSD"  ,      "team_astratioSD" ,    "team_orebpctSD"   ,   "team_drebpctSD"  ,    "team_rebpctSD"      ,
 "team_toratioSD" ,     "team_efffgpctSD" ,    "team_tspctSD"    ,    "team_usgSD"       ,   "team_paceSD"        ,
 "team_pieSD"      ,    "game_id_opp"   ,    "team_id_opp"  ,     "team_fgm_oppSD"    ,  "team_fga_oppSD"     ,
 "team_fg_pct_oppSD",   "team_fg3m_oppSD"  ,   "team_fg3a_oppSD"    , "team_fg3_pct_oppSD" , "team_ftm_oppSD"     ,
 "team_fta_oppSD"    ,  "team_ft_pct_oppSD" ,  "team_oreb_oppSD"   ,  "team_dreb_oppSD" ,    "team_reb_oppSD"     ,
 "team_reb.1_oppSD"   , "team_stl_oppSD"    ,  "team_blk_oppSD"   ,   "team_to_oppSD"    ,   "team_fouls_oppSD"   ,
 "team_pts_oppSD"      ,"team_margin_oppSD" ,  "team_offrtg_oppSD"   ,"team_defrtg_oppSD" ,  "team_netrtg_oppSD"  ,
 "team_astpct_oppSD"  , "team_astto_oppSD"  ,  "team_astratio_oppSD" ,"team_orebpct_oppSD" , "team_drebpct_oppSD" ,
 "team_rebpct_oppSD"  , "team_toratio_oppSD"  ,"team_efffgpct_oppSD" ,"team_tspct_oppSD",    "team_usg_oppSD"     ,
"team_pace_oppSD" ,    "team_pie_opp" ,     "date"  ,            "city"       ,       "dates" )

names(tot2) = c("game_id",           "team_id",           "team_fgmYear",          "team_fgaYear",          "team_fg_pctYear"   ,   
                "team_fg3mYear",         "team_fg3aYear"     ,    "team_fg3_pctYear"     , "team_ftmYear"    ,      "team_ftaYear"         ,
                "team_ft_pctYear",       "team_orebYear"      ,   "team_drebYear"       ,  "team_rebYear"     ,     "team_reb.1Year"       ,
                "team_stlYear" ,         "team_blkYear"      ,    "team_toYear"        ,   "team_foulsYear"    ,    "team_ptsYear"         ,
                "team_marginYear",       "team_offrtgYear"   ,    "team_defrtgYear"     ,  "team_netrtgYear"    ,   "team_astpctYear"      ,
                "team_asttoYear"  ,      "team_astratioYear" ,    "team_orebpctYear"   ,   "team_drebpctYear"  ,    "team_rebpctYear"      ,
                "team_toratioYear" ,     "team_efffgpctYear" ,    "team_tspctYear"    ,    "team_usgYear"       ,   "team_paceYear"        ,
                "team_pieYear"      ,    "game_id_opp"   ,    "team_id_opp"  ,     "team_fgm_oppYear"    ,  "team_fga_oppYear"     ,
                "team_fg_pct_oppYear",   "team_fg3m_oppYear"  ,   "team_fg3a_oppYear"    , "team_fg3_pct_oppYear" , "team_ftm_oppYear"     ,
                "team_fta_oppYear"    ,  "team_ft_pct_oppYear" ,  "team_oreb_oppYear"   ,  "team_dreb_oppYear" ,    "team_reb_oppYear"     ,
                "team_reb.1_oppYear"   , "team_stl_oppYear"    ,  "team_blk_oppYear"   ,   "team_to_oppYear"    ,   "team_fouls_oppYear"   ,
                "team_pts_oppYear"      ,"team_margin_oppYear" ,  "team_offrtg_oppYear"   ,"team_defrtg_oppYear" ,  "team_netrtg_oppYear"  ,
                "team_astpct_oppYear"  , "team_astto_oppYear"  ,  "team_astratio_oppYear" ,"team_orebpct_oppYear" , "team_drebpct_oppYear" ,
                "team_rebpct_oppYear"  , "team_toratio_oppYear"  ,"team_efffgpct_oppYear" ,"team_tspct_oppYear",    "team_usg_oppYear"     ,
                "team_pace_oppYear" ,    "team_pie_opp" ,     "date"  ,            "city"       ,       "dates" )

donezo=merge(donesd,tot2,by=c('game_id','team_id','game_id_opp','team_id_opp','date','city'))
assign(paste0("donedonedone",k), merge(done,donezo, by=c('game_id','team_id','game_id_opp','team_id_opp','date','city')))

       


}


totalitupp=rbind(donedonedone1,donedonedone2,donedonedone3,donedonedone4,donedonedone5,donedonedone6,donedonedone7,donedonedone8,donedonedone9,donedonedone10,
                 donedonedone11,donedonedone12,donedonedone13,donedonedone14,donedonedone15,donedonedone16,donedonedone17,donedonedone18,donedonedone19,donedonedone20,
                 donedonedone21,donedonedone22,donedonedone23,donedonedone24,donedonedone25,donedonedone26,donedonedone27,donedonedone28,donedonedone29,donedonedone30)

write.csv(totalitupp,'almostdonefor2104.csv')
