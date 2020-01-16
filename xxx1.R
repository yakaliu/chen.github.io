library(ggplot2)

#Loading data
text<-read.csv("https://raw.githubusercontent.com/FahroziFahrozi/Google-Code-In-Task/master/Consumer%20dataset.csv")
head(text)

#Calculate the standard deviation of different parameters for each brand, and then combine them into new data
new.function <- function(text)
{
  brand<-c("a","b","c","d","e","f","g","h","i","j")
  perform<-c(rep(1,10))
  latest<-c(rep(1,10))
  fun<-c(rep(1,10))
  serious<-c(rep(1,10))
  bargain<-c(rep(1,10))
  value<-c(rep(1,10))
  trendy<-c(rep(1,10))
  rebuy<-c(rep(1,10))
  x<-0
  for(i in c)
  {
    x<-x+1
    print(x)
    text1<-subset(text,brand==i)
    print(head(text1))
    perform[x]<-sd(text1$perform)
    latest[x]<-sd(text1$latest)
    fun[x]<-sd(text1$fun)
    serious[x]<-sd(text1$serious)
    bargain[x]<-sd(text1$bargain)
    value[x]<-sd(text1$value)
    trendy[x]<-sd(text1$trendy)
    rebuy[x]<-sd(text1$rebuy)
  }
  text<-data.frame(brand,perform,latest,fun,serious,bargain,value,trendy,rebuy)
  return(text)
}
text<-new.function(text)
text

#Visualization
scatter <- ggplot()+
  geom_point(
    mapping=aes(x=perform, y=value, colour=brand),
    data=text)
scatter


