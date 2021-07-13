setwd("F:\\R_Do_An\\COVID-19-master\\COVID-19-master\\csse_covid_19_data\\csse_covid_19_daily_reports_us")

update.packages("tools")
install.packages("ggplot2", lib="C:\\Users\\acer\\Downloads\\R\\win-library\\3.3")
update.packages("ggplot2")
update.packages("data.table")
library(data.table)
library(ggplot2)

date_6 <- read.csv("01-06-2021.csv")
date_6

df <- data.frame(bang = date_6$Province_State, ca_mac = date_5$Confirmed)
df

ggplot(df, aes(x="", y=ca_mac, fill=bang)) +
  geom_bar(stat="identity", width=1, color="white") +
  coord_polar("y", start=0) + 
  theme_void() +
  labs(title="Bieu do the hien so ca mac Covid o cac bang thuoc My vao 01-06-2021 ")
  
