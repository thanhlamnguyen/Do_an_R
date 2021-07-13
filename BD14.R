setwd("F:\\R_Do_An\\COVID-19-master\\COVID-19-master\\csse_covid_19_data\\csse_covid_19_daily_reports_us")

update.packages("tools")
install.packages("ggplot2", lib="C:\\Users\\acer\\Downloads\\R\\win-library\\3.3")
update.packages("ggplot2")
update.packages("data.table")
library(data.table)
library(ggplot2)

date_4 <- read.csv("01-04-2021.csv")
date_4

df <- data.frame(bang = date_4$Province_State, Deaths = date_4$Deaths)
df

ggplot(data = df, aes(x=Deaths, y=bang)) + 
  geom_point(aes(colour = bang), colour = "black") +
  labs(title="Bieu do bieu hien so ca tu vong do Covid o cac bang thuoc My vao 01-04-2021",x = "Deaths", y="bang")
