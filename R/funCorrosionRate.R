GaugePoints<- read.csv("points.csv", header = TRUE)
Thickness<- read.csv("Thickness.csv", header = TRUE)



CorrosionRate <- function(PointID) {
x<-as.Date(Thickness$Date[which(Thickness$PointID == PointID & Thickness$Valid == TRUE)])
y<-Thickness$MIN.Reading[which(Thickness$PointID == PointID & Thickness$Valid == TRUE)]
slope<-lm(y~x)$coefficients[2]*-365 
return(slope)
}


library(ggplot2)
