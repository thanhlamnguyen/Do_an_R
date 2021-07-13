setwd("F:\\R_Do_An\\COVID-19-master\\COVID-19-master\\csse_covid_19_data\\csse_covid_19_daily_reports_us")

update.packages("tools")
install.packages("ggplot2", lib="C:\\Users\\acer\\Downloads\\R\\win-library\\3.3")
update.packages("ggplot2")
update.packages("data.table")
library(data.table)
library(ggplot2)

date_3 <- read.csv("01-03-2021.csv")
date_3

df <- data.frame(bang = date_3$Province_State, Deaths = date_3$Deaths)
df

ggplot(df, aes(x=bang, y=Deaths)) + 
  geom_point(aes(colour = Deaths), colour = "green") + 
  labs(title="Bieu do the hien so ca tu vong do Covid o cac bang thuoc My vao 01-03-2021")+
  theme(legend.position = "top", axis.text.x = element_text(angle = 45))
