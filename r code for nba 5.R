
install.packages("ggmap")
library(ggmap)

distance=mapdist(homecity,awaycity , mode = 'driving')

str(finished13)

homecity=as.character(finished13$home_team_city)
awaycity=as.character(finished13$away_team_city)
