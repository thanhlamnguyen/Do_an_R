setwd("F:\\R_Do_An\\COVID-19-master\\COVID-19-master\\csse_covid_19_data\\csse_covid_19_daily_reports_us")

update.packages("tools")
install.packages("ggplot2", lib="C:\\Users\\acer\\Downloads\\R\\win-library\\3.3")
update.packages("ggplot2")
update.packages("data.table")
library(data.table) 
library(ggplot2)

date_1 <- read.csv("01-01-2021.csv")
date_1

df <- data.frame(bang = date_1$Province_State, phuc_hoi = date_1$Recovered)

ggplot(df, aes(x=bang, y=phuc_hoi)) + 
  geom_point(aes(colour = phuc_hoi), colour = "red") + 
  labs(title="Bieu do the hien so ca phuc hoi Covid cua cac bang thuoc My vao 01-01-2021")+
  theme(legend.position = "top", axis.text.x = element_text(angle = 45))
