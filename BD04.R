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

p <- ggplot(data, aes(x= Province_State, y= Confirmed)) + 
  geom_boxplot()
p +   theme(legend.position = "top", axis.text.x = element_text(angle = 45))
+ labs(title="Bieu do the hien so ca mac Covid o cac bang thuoc My cho den nay ")

