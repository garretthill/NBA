setwd("C:/Users/G/Desktop/NBA R Code/NBA R Code")

library(dplyr)

rm(list=ls())


joined=read.csv('joined15 new.csv')



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
  
  j7=merge(jjj,air,by='city',all.x=T)
  
  j72=unique(j7)
  
  library(zoo)
  
  
  library(geosphere)
  
  j60 <- j72[order(j72$game_id),]
  
  j60$distance=NA
  
  for (i in 1:y)
  {
    j60$distance[i+1]=distHaversine(c(j60[i,77],j60[i,76]),c(j60[i+1,77],j60[i+1,76]))
  }
  
  j60$distance[1]=0
  
  j60$pastfivedays=j60$dates-5
  j60$pasttendays=j60$dates-10
  
  j60$counterfive=NA
  
  j60$counterfive=FALSE
  j60$counterfive[1:6]=(j60$dates[1:6] >= j60$pastfivedays[6])
  j60$travelinpastfive=NA
  
  for (i in 1:z)
  {
    j60$counterfive=FALSE
    j60$counterfive[1:i]=(j60$dates[1:i] >= j60$pastfivedays[i])
    j60$travelinpastfive[i]=sum(j60$counterfive*j60$distance)
  }
  
  j60$travelinpastten=NA
  
  for (i in 1:z)
  {
    j60$counterten=FALSE
    j60$counterten[1:i]=(j60$dates[1:i] >= j60$pasttendays[i])
    j60$travelinpastten[i]=sum(j60$counterten*j60$distance)
  }
  
  j60$gamesinpastfive=NA
  
  for(i in 1:z)
  {
    j60$gamesinpastfive[i]=sum(j60$dates[1:i] > j60$pastfivedays[i])
  }
  
  j60$gamesinpastten=NA
  
  for(i in 1:z)
  {
    j60$gamesinpastten[i]=sum(j60$dates[1:i] > j60$pasttendays[i])
  }
  
  
  
  jjj61=data.frame(newdata[1:2],rollapplyr(newdata[3:36], 10, sd, fill = 0),newdata[37:38],rollapplyr(newdata[39:72], 10, sd, fill = 0),newdata[73:75] )
  
  
  
  
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

write.csv(totalitupp,'almostdonefor2105.csv')









rm(list=ls())


jjj12=read.csv('joined12.csv')
jjj13=read.csv('joined13.csv')
jjj14=read.csv('joined.csv')
jjj15=read.csv('joined15 new.csv')


ref12=read.csv('ref12.csv')
ref13=read.csv('ref13.csv')
ref14=read.csv('ref14.csv')
ref15=read.csv('ref15.csv')

combojoin=rbind(jjj12,jjj13,jjj14,jjj15)

comboref=rbind(ref12,ref13,ref14,ref15)

write.csv(comboref,'comboref.csv')

write.csv(combojoin,'combojoin.csv')

comboref=comboref[,2:14]

combo=merge(combojoin,comboref,by='game_id')

library(dplyr)

java=c(combo$ref_one_id,combo$ref_two_id,combo$ref_three_id)

java2=unique(java)



for (k in java2)
  
{
  hawkshome=filter(combo,combo$ref_one_id==k|combo$ref_two_id==k|combo$ref_three_id==k)
  
  
  
  a=hawkshome[,1]
  b=hawkshome[,20]
  c=hawkshome[,29:30]
  d=hawkshome[,45]
  e=hawkshome[,54:55]
  f=hawkshome[,62:63]
  g=hawkshome[,75]
  h=hawkshome[,83:84]
  aa=hawkshome[,96]
  
  
  tot=cbind(a,b,c,d,e,f,g,h,aa)
  tot2=tot
  x=mean(tot[1:14,3])
  z=nrow(tot)
  for (i in 1:z)
  {
    tot2[i+1,2]=mean(tot[1:i,2])
    tot2[i+1,3]=mean(tot[1:i,3])
    tot2[i+1,4]=mean(tot[1:i,4])
    tot2[i+1,5]=mean(tot[1:i,5])
    tot2[i+1,6]=mean(tot[1:i,6])
    tot2[i+1,7]=mean(tot[1:i,7])
    tot2[i+1,8]=mean(tot[1:i,8])
    tot2[i+1,9]=mean(tot[1:i,9])
    tot2[i+1,10]=mean(tot[1:i,10])
    tot2[i+1,11]=mean(tot[1:i,11])
    tot2[i+1,12]=mean(tot[1:i,12])
    tot2[i+1,13]=mean(tot[1:i,13])
  }
  
  
  names(tot2) <- c("game_id" ,"ref_home_team_fta","ref_home_team_fouls","ref_home_team_pts",
                   "ref_away_team_fta","ref_away_team_fouls","ref_away_team_pts",
                   "ref_home_team_offrtg","ref_home_team_defrtg","ref_home_team_pace",
                   "ref_away_team_offrtg","ref_away_team_defrtg","ref_away_team_pace")
  
  
  tottot=tot2
  
  newdata <- tottot[order(tottot$game_id),]
  
  newdata$ref_id=k
  
  
  
  assign(paste0("donedonedone",k), newdata[order(newdata$game_id),])
  
  
}



totalitupp=rbind(donedonedone101283,
                 donedonedone101284,
                 donedonedone1142,
                 donedonedone1146,
                 donedonedone1147,
                 donedonedone1148,
                 donedonedone1151,
                 donedonedone1152,
                 donedonedone1153,
                 donedonedone1159,
                 donedonedone1162,
                 donedonedone1164,
                 donedonedone1168,
                 donedonedone1174,
                 donedonedone1176,
                 donedonedone1179,
                 donedonedone1185,
                 donedonedone1188,
                 donedonedone1190,
                 donedonedone1192,
                 donedonedone1193,
                 donedonedone1194,
                 donedonedone1195,
                 donedonedone1198,
                 donedonedone1199,
                 donedonedone1201,
                 donedonedone1204,
                 donedonedone1363,
                 donedonedone1626302,
                 donedonedone1662,
                 donedonedone1664,
                 donedonedone1830,
                 donedonedone2001,
                 donedonedone2002,
                 donedonedone2003,
                 donedonedone2004,
                 donedonedone2005,
                 donedonedone200832,
                 donedonedone200833,
                 donedonedone200834,
                 donedonedone201245,
                 donedonedone201246,
                 donedonedone201637,
                 donedonedone201638,
                 donedonedone201639,
                 donedonedone201640,
                 donedonedone202000,
                 donedonedone202005,
                 donedonedone202007,
                 donedonedone202012,
                 donedonedone202026,
                 donedonedone202027,
                 donedonedone202035,
                 donedonedone202037,
                 donedonedone202041,
                 donedonedone202049,
                 donedonedone202053,
                 donedonedone202056,
                 donedonedone202058,
                 donedonedone202900,
                 donedonedone203177,
                 donedonedone203207,
                 donedonedone203591,
                 donedonedone203592,
                 donedonedone203593,
                 donedonedone204055,
                 donedonedone204058,
                 donedonedone204059,
                 donedonedone2148,
                 donedonedone2529,
                 donedonedone2530,
                 donedonedone2532,
                 donedonedone2534,
                 donedonedone2714,
                 donedonedone2715,
                 donedonedone2716,
                 donedonedone2882)

write.csv(totalitupp,'allref.csv')







rm(list=ls())

jjj12=read.csv('joined12.csv')
jjj13=read.csv('joined13.csv')
jjj14=read.csv('joined.csv')
jjj15=read.csv('joined15 new.csv')

ALLIDS=rbind(jjj12,jjj13,jjj14,jjj15)

ALLIDS2=ALLIDS[,6:7]


twelve=read.csv('almostdonefor2102.csv')
thirteen=read.csv('almostdonefor2103.csv')
fourteen=read.csv('almostdonefor2104.csv')
fifteen=read.csv('almostdonefor2105.csv')

ALL=rbind(twelve,thirteen,fourteen,fifteen)


comp=merge(ALL,ALLIDS2, by='game_id')

comp$indicator=0
x=which(comp$home_team_id==comp$team_id)

comp$indicator[x]=1

home=filter(comp,comp$indicator==1)
away=filter(comp,comp$indicator==0)

write.csv(home,'home.csv')
write.csv(away,'away.csv')



newhome=read.csv('home.csv')
newaway=read.csv('away.csv')

names(newhome)=c('X.1','game_id'  ,	'X'	,'hometeam_id'	,'game_id_opp'	,'hometeam_id_opp'	,'date',	'city',	'hometeam_fgm'
                 ,'hometeam_fga'	,'hometeam_fg_pct'	,'hometeam_fg3m'	,'hometeam_fg3a',	'hometeam_fg3_pct'	,'hometeam_ftm'
                 ,'hometeam_fta'	,'hometeam_ft_pct'	,'hometeam_oreb'	,'hometeam_dreb',	'hometeam_reb'	,'hometeam_reb.1'	
                 ,'hometeam_stl'	,'hometeam_blk'	,'hometeam_to',	'hometeam_fouls',	'hometeam_pts'	,'hometeam_margin'	
                 ,         'hometeam_offrtg',	'hometeam_defrtg',	'hometeam_netrtg',	'hometeam_astpct'	,'hometeam_astto'	
                 ,        'hometeam_astratio',	'hometeam_orebpct',	'hometeam_drebpct',	'hometeam_rebpct',	'hometeam_toratio'	
                 ,       'hometeam_efffgpct'	,'hometeam_tspct'	,'hometeam_usg'	,'hometeam_pace'	,'hometeam_pie'	
                 ,      'hometeam_fgm_opp',	'hometeam_fga_opp',	'hometeam_fg_pct_opp'	,'hometeam_fg3m_opp'	
                 ,     'hometeam_fg3a_opp',	'hometeam_fg3_pct_opp',	'hometeam_ftm_opp',	'hometeam_fta_opp'	
                 ,    'hometeam_ft_pct_opp',	'hometeam_oreb_opp'	,'hometeam_dreb_opp',	'hometeam_reb_opp'	
                 ,   'hometeam_reb.1_opp',	'hometeam_stl_opp'	,'hometeam_blk_opp'	,'hometeam_to_opp',	'hometeam_fouls_opp'	
                 ,             'hometeam_pts_opp'	,'hometeam_margin_opp',	'hometeam_offrtg_opp'	,'hometeam_defrtg_opp'	
                 ,            'hometeam_netrtg_opp',	'hometeam_astpct_opp',	'hometeam_astto_opp'	,'hometeam_astratio_opp'	
                 ,           'hometeam_orebpct_opp'	,'hometeam_drebpct_opp',	'hometeam_rebpct_opp',	'hometeam_toratio_opp'	
                 ,          'hometeam_efffgpct_opp', 'hometeam_tspct_opp'	,'hometeam_usg_opp',	'hometeam_pace_opp'	
                 ,         'hometeam_pie_opp.x'	,'dates.x'	,'lat'	,'long',	'distance',	'hometeam_pastfivedays',	'hometeam_pasttendays'	
                 ,        'hometeam_counterfive'	,'hometeam_travelinpastfive'	,'hometeam_travelinpastten','hometeam_counterten'	
                 ,       'hometeam_gamesinpastfive',	'hometeam_gamesinpastten'	,'hometeam_fgmSD',	'hometeam_fgaSD'	
                 ,      'hometeam_fg_pctSD',	'hometeam_fg3mSD',	'hometeam_fg3aSD',	'hometeam_fg3_pctSD',	'hometeam_ftmSD'	
                 ,     'hometeam_ftaSD'	,'hometeam_ft_pctSD',	'hometeam_orebSD',	'hometeam_drebSD'	,'hometeam_rebSD'	
                 ,    'hometeam_reb.1SD',	'hometeam_stlSD'	,'hometeam_blkSD'	,'hometeam_toSD'	,'hometeam_foulsSD'	
                 ,   'hometeam_ptsSD'	,'hometeam_marginSD',	'hometeam_offrtgSD'	,'hometeam_defrtgSD',	'hometeam_netrtgSD'	
                 ,  'hometeam_astpctSD'	,'hometeam_asttoSD',	'hometeam_astratioSD'	,'hometeam_orebpctSD'	
                 ,             'hometeam_drebpctSD',	'hometeam_rebpctSD',	'hometeam_toratioSD'	,'hometeam_efffgpctSD'	
                 ,            'hometeam_tspctSD'	,'hometeam_usgSD'	,'hometeam_paceSD',	'hometeam_pieSD'	,'hometeam_fgm_oppSD'	
                 ,           'hometeam_fga_oppSD'	,'hometeam_fg_pct_oppSD',	'hometeam_fg3m_oppSD',	'hometeam_fg3a_oppSD'	
                 ,          'hometeam_fg3_pct_oppSD',	'hometeam_ftm_oppSD',	'hometeam_fta_oppSD',	'hometeam_ft_pct_oppSD'	
                 ,         'hometeam_oreb_oppSD'	,'hometeam_dreb_oppSD',	'hometeam_reb_oppSD',	'hometeam_reb.1_oppSD'	
                 ,        'hometeam_stl_oppSD'	,'hometeam_blk_oppSD'	,'hometeam_to_oppSD'	,'hometeam_fouls_oppSD'
                 ,       'hometeam_pts_oppSD'	,'hometeam_margin_oppSD'	,'hometeam_offrtg_oppSD'	,'hometeam_defrtg_oppSD'	
                 ,      'hometeam_netrtg_oppSD'	,'hometeam_astpct_oppSD'	,'hometeam_astto_oppSD'	,'hometeam_astratio_oppSD'	
                 ,     'hometeam_orebpct_oppSD'	,'hometeam_drebpct_oppSD',	'hometeam_rebpct_oppSD',	'hometeam_toratio_oppSD'	
                 ,    'hometeam_efffgpct_oppSD',	'hometeam_tspct_oppSD',	'hometeam_usg_oppSD'	,'hometeam_pace_oppSD','team_pie_opp.xxx',	'dates.xxx',
                 
                 'hometeam_fgmYear',	'hometeam_fgaYear',	'hometeam_fg_pctYear',	'hometeam_fg3mYear',	
                 'hometeam_fg3aYear',	'hometeam_fg3_pctYear',	'hometeam_ftmYear',	'hometeam_ftaYear',	
                 'hometeam_ft_pctYear',	'hometeam_orebYear',	'hometeam_drebYear',	'hometeam_rebYear',	
                 'hometeam_reb.1Year',	'hometeam_stlYear',	'hometeam_blkYear',	'hometeam_toYear',	
                 'hometeam_foulsYear',	'hometeam_ptsYear',	'hometeam_marginYear',	'hometeam_offrtgYear',	
                 'hometeam_defrtgYear',	'hometeam_netrtgYear',	'hometeam_astpctYear',	'hometeam_asttoYear',	
                 'hometeam_astratioYear',	'hometeam_orebpctYear',	'hometeam_drebpctYear',	'hometeam_rebpctYear',	
                 'hometeam_toratioYear',	'hometeam_efffgpctYear',	'hometeam_tspctYear',	'hometeam_usgYear',	
                 'hometeam_paceYear',	'hometeam_pieYear',	'hometeam_fgm_oppYear',	'hometeam_fga_oppYear',	
                 'hometeam_fg_pct_oppYear',	'hometeam_fg3m_oppYear',	'hometeam_fg3a_oppYear',	'hometeam_fg3_pct_oppYear',	
                 'hometeam_ftm_oppYear',	'hometeam_fta_oppYear',	'hometeam_ft_pct_oppYear',	'hometeam_oreb_oppYear',	
                 'hometeam_dreb_oppYear',	'hometeam_reb_oppYear',	'hometeam_reb.1_oppYear',	'hometeam_stl_oppYear',	
                 'hometeam_blk_oppYear',	'hometeam_to_oppYear',	'hometeam_fouls_oppYear',	'hometeam_pts_oppYear',	
                 'hometeam_margin_oppYear',	'hometeam_offrtg_oppYear',	'hometeam_defrtg_oppYear',	'hometeam_netrtg_oppYear',	
                 'hometeam_astpct_oppYear',	'hometeam_astto_oppYear',	'hometeam_astratio_oppYear',	'hometeam_orebpct_oppYear',	
                 'hometeam_drebpct_oppYear',	'hometeam_rebpct_oppYear',	'hometeam_toratio_oppYear',	'hometeam_efffgpct_oppYear',	
                 'hometeam_tspct_oppYear',	'hometeam_usg_oppYear',	'hometeam_pace_oppYear'
                 
                 ,   'hometeam_pie_opp.y'	,'dates.y'	,'home_hometeam_id'	,'indicator'
)




names(newaway)=c('X.1','game_id'  ,	'X'	,'awayteam_id'	,'game_id_opp'	,'awayteam_id_opp'	,'date',	'city',	'awayteam_fgm'
                 ,'awayteam_fga'	,'awayteam_fg_pct'	,'awayteam_fg3m'	,'awayteam_fg3a',	'awayteam_fg3_pct'	,'awayteam_ftm'
                 ,'awayteam_fta'	,'awayteam_ft_pct'	,'awayteam_oreb'	,'awayteam_dreb',	'awayteam_reb'	,'awayteam_reb.1'	
                 ,'awayteam_stl'	,'awayteam_blk'	,'awayteam_to',	'awayteam_fouls',	'awayteam_pts'	,'awayteam_margin'	
                 ,         'awayteam_offrtg',	'awayteam_defrtg',	'awayteam_netrtg',	'awayteam_astpct'	,'awayteam_astto'	
                 ,        'awayteam_astratio',	'awayteam_orebpct',	'awayteam_drebpct',	'awayteam_rebpct',	'awayteam_toratio'	
                 ,       'awayteam_efffgpct'	,'awayteam_tspct'	,'awayteam_usg'	,'awayteam_pace'	,'awayteam_pie'	
                 ,      'awayteam_fgm_opp',	'awayteam_fga_opp',	'awayteam_fg_pct_opp'	,'awayteam_fg3m_opp'	
                 ,     'awayteam_fg3a_opp',	'awayteam_fg3_pct_opp',	'awayteam_ftm_opp',	'awayteam_fta_opp'	
                 ,    'awayteam_ft_pct_opp',	'awayteam_oreb_opp'	,'awayteam_dreb_opp',	'awayteam_reb_opp'	
                 ,   'awayteam_reb.1_opp',	'awayteam_stl_opp'	,'awayteam_blk_opp'	,'awayteam_to_opp',	'awayteam_fouls_opp'	
                 ,             'awayteam_pts_opp'	,'awayteam_margin_opp',	'awayteam_offrtg_opp'	,'awayteam_defrtg_opp'	
                 ,            'awayteam_netrtg_opp',	'awayteam_astpct_opp',	'awayteam_astto_opp'	,'awayteam_astratio_opp'	
                 ,           'awayteam_orebpct_opp'	,'awayteam_drebpct_opp',	'awayteam_rebpct_opp',	'awayteam_toratio_opp'	
                 ,          'awayteam_efffgpct_opp', 'awayteam_tspct_opp'	,'awayteam_usg_opp',	'awayteam_pace_opp'	
                 ,         'awayteam_pie_opp.x'	,'dates.x'	,'lat'	,'long',	'distance',	'awayteam_pastfivedays',	'awayteam_pasttendays'	
                 ,        'awayteam_counterfive'	,'awayteam_travelinpastfive','awayteam_travelinpastten'	,'awayteam_counterten'	
                 ,       'awayteam_gamesinpastfive',	'awayteam_gamesinpastten'	,'awayteam_fgmSD',	'awayteam_fgaSD'	
                 ,      'awayteam_fg_pctSD',	'awayteam_fg3mSD',	'awayteam_fg3aSD',	'awayteam_fg3_pctSD',	'awayteam_ftmSD'	
                 ,     'awayteam_ftaSD'	,'awayteam_ft_pctSD',	'awayteam_orebSD',	'awayteam_drebSD'	,'awayteam_rebSD'	
                 ,    'awayteam_reb.1SD',	'awayteam_stlSD'	,'awayteam_blkSD'	,'awayteam_toSD'	,'awayteam_foulsSD'	
                 ,   'awayteam_ptsSD'	,'awayteam_marginSD',	'awayteam_offrtgSD'	,'awayteam_defrtgSD',	'awayteam_netrtgSD'	
                 ,  'awayteam_astpctSD'	,'awayteam_asttoSD',	'awayteam_astratioSD'	,'awayteam_orebpctSD'	
                 ,             'awayteam_drebpctSD',	'awayteam_rebpctSD',	'awayteam_toratioSD'	,'awayteam_efffgpctSD'	
                 ,            'awayteam_tspctSD'	,'awayteam_usgSD'	,'awayteam_paceSD',	'awayteam_pieSD'	,'awayteam_fgm_oppSD'	
                 ,           'awayteam_fga_oppSD'	,'awayteam_fg_pct_oppSD',	'awayteam_fg3m_oppSD',	'awayteam_fg3a_oppSD'	
                 ,          'awayteam_fg3_pct_oppSD',	'awayteam_ftm_oppSD',	'awayteam_fta_oppSD',	'awayteam_ft_pct_oppSD'	
                 ,         'awayteam_oreb_oppSD'	,'awayteam_dreb_oppSD',	'awayteam_reb_oppSD',	'awayteam_reb.1_oppSD'	
                 ,        'awayteam_stl_oppSD'	,'awayteam_blk_oppSD'	,'awayteam_to_oppSD'	,'awayteam_fouls_oppSD'
                 ,       'awayteam_pts_oppSD'	,'awayteam_margin_oppSD'	,'awayteam_offrtg_oppSD'	,'awayteam_defrtg_oppSD'	
                 ,      'awayteam_netrtg_oppSD'	,'awayteam_astpct_oppSD'	,'awayteam_astto_oppSD'	,'awayteam_astratio_oppSD'	
                 ,     'awayteam_orebpct_oppSD'	,'awayteam_drebpct_oppSD',	'awayteam_rebpct_oppSD',	'awayteam_toratio_oppSD'	
                 ,    'awayteam_efffgpct_oppSD',	'awayteam_tspct_oppSD',	'awayteam_usg_oppSD'	,'awayteam_pace_oppSD','team_pie_opp.xxxyyy',	'dates.xxxyyy',
                 'awayteam_fgmYear',	'awayteam_fgaYear',	'awayteam_fg_pctYear',	'awayteam_fg3mYear',	
                 'awayteam_fg3aYear',	'awayteam_fg3_pctYear',	'awayteam_ftmYear',	'awayteam_ftaYear',	
                 'awayteam_ft_pctYear',	'awayteam_orebYear',	'awayteam_drebYear',	'awayteam_rebYear',	
                 'awayteam_reb.1Year',	'awayteam_stlYear',	'awayteam_blkYear',	'awayteam_toYear',	
                 'awayteam_foulsYear',	'awayteam_ptsYear',	'awayteam_marginYear',	'awayteam_offrtgYear',	
                 'awayteam_defrtgYear',	'awayteam_netrtgYear',	'awayteam_astpctYear',	'awayteam_asttoYear',	
                 'awayteam_astratioYear',	'awayteam_orebpctYear',	'awayteam_drebpctYear',	'awayteam_rebpctYear',	
                 'awayteam_toratioYear',	'awayteam_efffgpctYear',	'awayteam_tspctYear',	'awayteam_usgYear',	
                 'awayteam_paceYear',	'awayteam_pieYear',	'awayteam_fgm_oppYear',	'awayteam_fga_oppYear',	
                 'awayteam_fg_pct_oppYear',	'awayteam_fg3m_oppYear',	'awayteam_fg3a_oppYear',	'awayteam_fg3_pct_oppYear',	
                 'awayteam_ftm_oppYear',	'awayteam_fta_oppYear',	'awayteam_ft_pct_oppYear',	'awayteam_oreb_oppYear',	
                 'awayteam_dreb_oppYear',	'awayteam_reb_oppYear',	'awayteam_reb.1_oppYear',	'awayteam_stl_oppYear',	
                 'awayteam_blk_oppYear',	'awayteam_to_oppYear',	'awayteam_fouls_oppYear',	'awayteam_pts_oppYear',	
                 'awayteam_margin_oppYear',	'awayteam_offrtg_oppYear',	'awayteam_defrtg_oppYear',	'awayteam_netrtg_oppYear',	
                 'awayteam_astpct_oppYear',	'awayteam_astto_oppYear',	'awayteam_astratio_oppYear',	'awayteam_orebpct_oppYear',	
                 'awayteam_drebpct_oppYear',	'awayteam_rebpct_oppYear',	'awayteam_toratio_oppYear',	'awayteam_efffgpct_oppYear',	
                 'awayteam_tspct_oppYear',	'awayteam_usg_oppYear',	'awayteam_pace_oppYear'
                 
                 ,   'awayteam_pie_opp.y'	,'dates.y'	,'awayteam_id'	,'indicator')



YES=merge(newhome,newaway,by='game_id')

write.csv(YES,'yes.csv')







rm(list=ls())


ref=read.csv('allref.csv')




games=read.csv('YES.csv')





ref10=aggregate(. ~ game_id, data = ref, mean)

games333=merge(games,ref10,by='game_id')

write.csv(games333,'games333.csv')
