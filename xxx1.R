library(ggplot2)
library(reshape2)

#Loading data
text<-read.csv("https://raw.githubusercontent.com/FahroziFahrozi/Google-Code-In-Task/master/Consumer%20dataset.csv")
head(text)

#Show data properties and summary显示数据性质和摘要
str(text)
summary(text)

#Split and average data reorganization对数据进行拆分和平均值重组
text1<-melt(text,id=c("brand"))
text1<-dcast(text1,brand~variable,mean)
brand<-text1$brand

#Standardize the data对数据进行标准化
text1<-scale(text1[,2:10])

#Conversion data type, add brand column转化数据类型，添加brand列
text1<-as.data.frame(text1)
text1<-cbind(brand,text1)

#Transform data into long format and visualize with bar chart转化数据为长格式，用条形图可视化
text1<-melt(text1,id=c("brand"))
ggplot(data=text1,aes(x=variable,y=value,fill=brand))+
  geom_col(position = position_dodge())

