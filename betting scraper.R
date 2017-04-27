


rm(list=ls())



library(rvest)
i=NULL
j=NULL
url=NULL
for (j in 1:31)
{

  
  urlchanger=20160200+j
  url = paste("http://www.sportsbookreview.com/betting-odds/nba-basketball/totals/1st-half/?date=",urlchanger,sep="")
  lego_movie <- read_html(url)
  cast <- lego_movie %>%
  html_nodes(".el-div div :nth-child(1)") %>%
  html_text()

number=length(cast)
n=number/26

opener=NULL
fivedimes=NULL
x=NULL
y=NULL
z=NULL
a=NULL
away_team=NULL
home_team=NULL

for (i in 1:n)
{
cast
away_team[i]=cast[26*(i-1)+1]
home_team[i]=cast[26*(i-1)+3]
opener[i]=cast[26*(i-1)+5]
fivedimes[i]=cast[26*(i-1)+9]
date=urlchanger

julio=cbind(away_team,home_team,opener,fivedimes,date)
}

assign(paste0('day',j),julio) 

}

allfeb=rbind(day1,day2,day3,day4,day5,day6,day7,day8,day9,day10,day11,day12,day13,day14,day15,
             day16,day17,day18,day19,day20,day21,day22,day23,day24,day25,day26,day27,day28,day29,day30,day31)

allfeb=data.frame(allfeb)

f<- which(grepl('½', allfeb$fivedimes))

o<- which(grepl('½', allfeb$opener))

allfeb$dimeshalf=0

allfeb$openerhalf=0

allfeb$dimeshalf[f]=.5

allfeb$openerhalf[o]=.5

allfeb$fivedimes=sub('Â.*', '', allfeb$fivedimes)
               


allfeb$opener=sub('Â.*', '', allfeb$opener)

allfeb$fivedimes=as.numeric(allfeb$fivedimes)

allfeb$dimeshalf=as.numeric(allfeb$dimeshalf)

allfeb$opener=as.numeric(allfeb$opener)

allfeb$openerhalf=as.numeric(allfeb$openerhalf)

allfeb$line=0



allfeb$open=0


allfeb$line=allfeb$fivedimes+allfeb$dimeshalf



allfeb$open=allfeb$opener+allfeb$openerhalf

myvars <- c("away_team", "home_team", "date", "line", "open")
newdatayo <- allfeb[myvars]

write.csv(newdatayo,'feb 2016 lines.csv')


rm(list=ls())
one=read.csv('october 2016 lines.csv')
two=read.csv('november 2016 lines.csv')
three=read.csv('december 2016 lines.csv')
four=read.csv('jan 2016 lines.csv')
five=read.csv('feb 2016 lines.csv')
six=read.csv('march 2016 lines.csv')
seven=read.csv('april 2016 lines.csv')


lines=rbind(one,two,three,four,five,six,seven)

xxx=which(is.na(lines$line))

lines2=lines[-(xxx),]

lines5=lines2[-(1:8),]


write.csv(lines5,'15-16 lines.csv')

rm(list=ls())

all=read.csv('15-16 lines.csv')

all$date=as.character(all$date)
all$betterDates <- as.Date(all$date, "%Y%m%d")


linesA=all[,-(1:2)]

lines2016=linesA[,-3]

write.csv(lines2016,'final 15-16 lines.csv')
