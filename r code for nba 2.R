

nbaschedule13 = read.csv("nba13schedule.csv") 

totalpoints=nbaschedule13$away_team_pts + nbaschedule13$home_team_pts

total=cbind(nbaschedule13,totalpoints)

myvars = names(total) %in% c("X.1")
mytotal = total[!myvars]

mytotal[3,3]

betterDates <- as.Date(mytotal$Date,
                       format = "%a %b %d %Y")
betterDates

mytotal2=cbind(mytotal,betterDates)

myvars2 = names(mytotal2) %in% c("X","Date")

realnbaschedule13=mytotal2[!myvars2]

lll=mytotal2[1,8]-mytotal2[2,8]
llll=as.numeric(lll)




mytotal2[1,7]

numberofdays=length(mytotal2$betterDates)
daysoff=NULL
for ( i in 1:numberofdays){

  daysoff[i]=mytotal2[i+1,8]-mytotal2[i,8]

}

daysoff
