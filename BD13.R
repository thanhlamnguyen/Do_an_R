setwd("F:\\R_Do_An\\COVID-19-master\\COVID-19-master\\csse_covid_19_data\\csse_covid_19_daily_reports_us")

update.packages("tools")
install.packages("ggplot2", lib="C:\\Users\\acer\\Downloads\\R\\win-library\\3.3")
update.packages("ggplot2")
update.packages("data.table")
library(data.table)
library(ggplot2)

date_4 <- read.csv("01-04-2021.csv")
date_4

df <- data.frame(bang = date_4$Province_State, ca_mac = date_4$Confirmed)
df

bp <- ggplot(df, aes(x=bang, y=ca_mac, fill=bang)) + 
  geom_boxplot()+
  labs(title="Bieu do the hien so ca mac Covid o cac bang thuoc My vao 01-04-2021",x="bang", y = "ca_mac")
bp + theme_classic()