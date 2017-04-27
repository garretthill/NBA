


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
         ,        'hometeam_counterfive'	,'hometeam_travelinpastfive'	,'hometeam_counterten',	'hometeam_travelinpastten'	
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
         ,        'awayteam_counterfive'	,'awayteam_travelinpastfive'	,'awayteam_counterten',	'awayteam_travelinpastten'	
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
