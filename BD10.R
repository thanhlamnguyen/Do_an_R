setwd("F:\\R_Do_An\\COVID-19-master\\COVID-19-master\\csse_covid_19_data\\csse_covid_19_daily_reports_us")

update.packages("tools")
install.packages("ggplot2", lib="C:\\Users\\acer\\Downloads\\R\\win-library\\3.3")
update.packages("ggplot2")
update.packages("data.table")
library(data.table)
library(ggplot2)

date_3 <- read.csv("01-03-2021.csv")
date_3
df <- data.frame(bang = date_3$Province_State, ca_mac = date_3$Confirmed)
df
ggplot(data = df, aes(x=ca_mac, y=bang))  + 
  geom_col(aes(color=ca_mac,fill =bang)) + 
  labs(title="Bieu do bieu hien so ca mac Covid o cac bang thuoc My vao 01-03_2021 ")

