setwd("F:\\R_Do_An\\COVID-19-master\\COVID-19-master\\csse_covid_19_data\\csse_covid_19_daily_reports_us")

update.packages("tools")
install.packages("ggplot2", lib="C:\\Users\\acer\\Downloads\\R\\win-library\\3.3")
update.packages("ggplot2")
update.packages("data.table")
library(data.table)
library(ggplot2)

date_4 <- read.csv("01-04-2021.csv")
date_4

df <- data.frame(bang = date_4$Province_State, phuc_hoi = date_4$Recovered)
df

plot <- ggplot(df, aes(x=bang, y=phuc_hoi)) + geom_bar(stat = "identity") 
plot 
