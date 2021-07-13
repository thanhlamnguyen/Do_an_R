setwd("F:\\R_Do_An\\COVID-19-master\\COVID-19-master\\csse_covid_19_data\\csse_covid_19_daily_reports_us")

update.packages("tools")
install.packages("ggplot2", lib="C:\\Users\\acer\\Downloads\\R\\win-library\\3.3")
update.packages("ggplot2")
update.packages("data.table")
library(data.table) 
library(ggplot2)

date_2 <- read.csv("01-02-2021.csv")
date_2
df3 <- data.frame(bang = date_2$Province_State, ca_mac = date_2$Confirmed)
ggplot(data = df3, aes(x=ca_mac, y=bang)) + 
  geom_point(aes(colour = bang), colour = "red") +
  labs(title="Bieu bo bieu hien so ca mac Covid o cac bang cua My vao 01-02-2021",x = "ca_mac", y="bang")
