#Import package
library(animint2)
library(ggplot2)

#Get data and output data
data(WorldBank,package="animint2")
tail(WorldBank)
head(WorldBank)
dim(WorldBank)
WorldBank1975<-subset(WorldBank,year==1975)
head(WorldBank1975)

#Generate scatter plot
scatter <- ggplot()+
+   geom_point(
+     mapping=aes(x=life.expectancy, y=fertility.rate, color=region),
+     data=WorldBank1975)
scatter

#Rendering ggplots on web pages using animint
animint(scatter)

#if the web page is blank, try running
servr::httd("C:/Users/CaoCaoSU/AppData/Local/Temp/RtmpUhiF5C/file4e98583e3438")

#Publish on GitHub Gist
viz<-animint(scatter)
animint2gist(viz)

#http://bl.ocks.org/Chen-Rom-Kay/raw/cbd9815810afcd8f6a79f3ca4546fc43/
