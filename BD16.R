setwd("F:\\R_Do_An\\COVID-19-master\\COVID-19-master\\csse_covid_19_data\\csse_covid_19_daily_reports_us")

update.packages("tools")
install.packages("ggplot2", lib="C:\\Users\\acer\\Downloads\\R\\win-library\\3.3")
update.packages("ggplot2")
update.packages("data.table")
library(data.table)
library(ggplot2)

date_5 <- read.csv("01-05-2021.csv")
date_5

df <- data.frame(bang = date_5$Province_State, ca_mac = date_5$Confirmed)
df

ggplot(data = df, aes(x = bang, y = ca_mac)) +
  geom_point()  + 
  theme(legend.position = "top", axis.text.x = element_text(angle = 45)) + 
  labs(title="Bieu do bieu hien so ca mac Covid o cac bang thuoc My vào 01-05-2021")

                         