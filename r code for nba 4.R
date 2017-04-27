


min(finished13$home_team_id)

flights=read.csv("flights.csv", header=TRUE)
carriers = read.table("carriers.txt", header=TRUE)
flights2=merge(flights, carriers)

carrier.names = unique(flights2$name)

carrier.names

for (i in 1:n.carriers){
  paste("real",carrier.names[i])=subset(flights2,flights2$name=="carrier.names[i]")
       }

main=paste("Arrival delays for", carrier.names[i]),


newdata13 =subset(fullgame13new, away_team_abbrev=="DAL",
                  select=game_id.1:away_team_margin)



