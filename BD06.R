
setwd("F:\\R_Do_An\\COVID-19-master\\COVID-19-master\\csse_covid_19_data\\csse_covid_19_daily_reports_us")

update.packages("tools")
install.packages("ggplot2", lib="C:\\Users\\acer\\Downloads\\R\\win-library\\3.3")
update.packages("ggplot2")
update.packages("data.table")
library(data.table) 
library(ggplot2)

files <- list.files(pattern = ".csv")
temp <- lapply(files, fread, sep=",")
data <- rbindlist( temp, fill=TRUE)
names(data)
View(data)

bp <- ggplot(data, aes(x=Province_State, y=Recovered, fill=Province_State)) + 
  geom_boxplot()+
  labs(title="Plot of length  per dose",x="Dose (mg)", y = "Length")
bp + theme_classic()
