setwd("F:\\R_Do_An\\COVID-19-master\\COVID-19-master\\csse_covid_19_data\\csse_covid_19_daily_reports_us")

update.packages("tools")
install.packages("ggplot2", lib="C:\\Users\\acer\\Downloads\\R\\win-library\\3.3")
update.packages("ggplot2")
update.packages("data.table")
library(data.table) 
library(ggplot2)

date_1 <- read.csv("01-01-2021.csv")
date_1

data_plot <- data.frame(bang = date_1$Province_State, ca_mac = date_1$Confirmed)

ggplot(data = data_plot, aes(x=ca_mac, y=bang))  + 
  geom_col(aes(color=ca_mac,fill =bang)) + 
  labs(title="Bieu do the hien so ca mac Covid cua cac bang thuoc My vao 01-01-2021")

