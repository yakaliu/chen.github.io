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

#The correlation coefficient of variables is calculated by cor function and visualized by corrplot使用cor函数计算变量相关系数，用corrplot进行可视化
text1<-cor(text1)
corrplot(corr=text1)
