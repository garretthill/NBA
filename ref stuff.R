

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




