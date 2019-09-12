setwd("D:\\MS Data Analytics\\Sem 2\\Data Visualization\\Football\\complete-fifa-2017-player-dataset-global")

data = read.csv("FullData.csv")
epl = read.csv("epldata_final.csv")

data$Birth_Date
data$Year = substring(data$Birth_Date, 7, 10)

newData = merge(data, epl, by.x = "Name", by.y = "name")

na.omit(data)
write.csv(newData,"FullData.csv")