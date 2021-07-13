setwd("F:\\R_Do_An\\COVID-19-master\\COVID-19-master\\csse_covid_19_data\\csse_covid_19_daily_reports_us")

update.packages("tools")
install.packages("ggplot2", lib="C:\\Users\\acer\\Downloads\\R\\win-library\\3.3")
update.packages("ggplot2")
update.packages("data.table")
library(data.table)
library(ggplot2)

date_5 <- read.csv("01-05-2021.csv")
date_5

df <- data.frame(bang = date_5$Province_State, Deaths = date_5$Deaths)
df

ggplot(data = df, mapping = aes(x = bang, y = Deaths)) +
  geom_point(alpha = 0.5, color = "red") + 
  theme(legend.position = "top", axis.text.x = element_text(angle = 45)) + 
  labs(title="Bieu do bieu hien so ca tu vong do Covid o cac bang thuoc My vao 01-05-2021")