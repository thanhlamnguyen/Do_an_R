setwd("F:\\R_Do_An\\COVID-19-master\\COVID-19-master\\csse_covid_19_data\\csse_covid_19_daily_reports_us")

update.packages("tools")
install.packages("ggplot2", lib="C:\\Users\\acer\\Downloads\\R\\win-library\\3.3")
update.packages("ggplot2")
update.packages("data.table")
library(data.table)
library(ggplot2)

date_5 <- read.csv("01-05-2021.csv")
date_5

df <- data.frame(bang = date_5$Province_State, phuc_hoi = date_5$Deaths)
df

ggplot(df, aes(x="", y=phuc_hoi, fill=bang)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0) + 
  labs(title="Bieu do the hien so ca phuc hoi Covid o cac bang thuoc My vao 01-05-2021")
