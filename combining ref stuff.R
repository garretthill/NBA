
rm(list=ls())


ref=read.csv('allref.csv')


games=read.csv('YES.csv')

ref1=ref
ref2=ref

names(ref1) <- c("J","game_id" ,"ref1_home_team_fta","ref1_home_team_fouls","ref1_home_team_pts",
                 "ref1_away_team_fta","ref1_away_team_fouls","ref1_away_team_pts",
                 "ref1_home_team_offrtg","ref1_home_team_defrtg","ref1_home_team_pace",
                 "ref1_away_team_offrtg","ref1_away_team_defrtg","ref1_away_team_pace")

names(ref2) <- c("J","game_id" ,"ref2_home_team_fta","ref2_home_team_fouls","ref2_home_team_pts",
                 "ref2_away_team_fta","ref2_away_team_fouls","ref2_away_team_pts",
                 "ref2_home_team_offrtg","ref2_home_team_defrtg","ref2_home_team_pace",
                 "ref2_away_team_offrtg","ref2_away_team_defrtg","ref2_away_team_pace")

names(ref3) <- c("J","game_id" ,"ref3_home_team_fta","ref3_home_team_fouls","ref3_home_team_pts",
                 "ref3_away_team_fta","ref3_away_team_fouls","ref3_away_team_pts",
                 "ref3_home_team_offrtg","ref3_home_team_defrtg","ref3_home_team_pace",
                 "ref3_away_team_offrtg","ref3_away_team_defrtg","ref3_away_team_pace")


games1=merge(games,ref1,by='game_id')

games11=unique(games1)

games2=merge(games1,ref2,by='game_id')



ref10=aggregate(. ~ game_id, data = ref, mean)

games333=merge(games,ref10,by='game_id')

write.csv(games333,'games333.csv')
