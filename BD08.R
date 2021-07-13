setwd("F:\\R_Do_An\\COVID-19-master\\COVID-19-master\\csse_covid_19_data\\csse_covid_19_daily_reports_us")

update.packages("tools")
install.packages("ggplot2", lib="C:\\Users\\acer\\Downloads\\R\\win-library\\3.3")
update.packages("ggplot2")
update.packages("data.table")
library(data.table) 
library(ggplot2)

date_2 <- read.csv("01-02-2021.csv")
date_2

df4 <- data.frame(bang = date_2$Province_State, Deaths = date_2$Deaths)
df4

gg <- ggplot(df4, aes(x=bang, y=Deaths, color=Deaths)) +
  geom_point() + 
  labs(title="Bieu do bieu hien so ca tu vong do Covid o cac bang cua My vao 01-02-2021", x="bang", y="Deaths") + 
  theme(legend.position = "top", axis.text.x = element_text(angle = 45))
gg
