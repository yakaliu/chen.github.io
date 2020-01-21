#Load required packages
library(reshape2)
library(ggplot2)
library(stringr)

#Read data
text<-read.csv("https://raw.githubusercontent.com/benubah/r-community-explorer/master/docs/data/rladies.csv")
dim(text)

#Activity created data for 2018 and 2019 respectively
get2018<-text[str_which(text$created,"2018"),]
get2019<-text[str_which(text$created,"2019"),]
dim(get2018)
dim(get2019)

#Sum the total number of name, members, country, and city variables
#Among them, because the number of members is too large, the number of members is taken as 1%

name<-c(sum(duplicated(get2018$name)==FALSE),sum(duplicated(get2019$name)==FALSE))
country<-c(sum(duplicated(get2018$country)==FALSE),sum(duplicated(get2019$country)==FALSE))
members<-c(sum(get2018$members)/100,sum(get2019$members)/100)
city<-c(sum(duplicated(get2018$city)==FALSE),sum(duplicated(get2019$city)==FALSE))
year<-c("2018","2019")

#Visualize bar charts of variables, comparing 2018 and 2019
new_text<-data.frame(year,name,members,country,city)
new_text

#Visualize for each data为每个数据可视化
#name
ggplot(data=new_text,aes(x=year,y=name,fill=year))+
 geom_bar(stat="identity")
#members
ggplot(data=new_text,aes(x=year,y=members,fill=year))+
 geom_bar(stat="identity")
#country
ggplot(data=new_text,aes(x=year,y=country,fill=year))+
 geom_bar(stat="identity")
#city
ggplot(data=new_text,aes(x=year,y=city,fill=year))+
 geom_bar(stat="identity")
