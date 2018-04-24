#Function that changes dates in a vector from the format m/dd/yyyy 00:00 to yyyy-mm-dd 00:00:00
#
#Args
  #df is the dataframe
#output
  #New date and time format for the "date_time" column

newdate<-function(df)
{
  return(as.POSIXct(as.character(df[,"Date_Time"]),format="%m/%d/%Y %H:%M"))
}


xlim<-c(as.POSIXct("2017-05-01 01:00:00"),as.POSIXct("2017-07-01 01:00:00"))
ylim<-c(0.3,0.5)
plot(FFBS$Date_Time,FFBS$Moist_10cm,type="l",xlim = xlim,ylim = ylim,col='red',xlab="Date",ylab="Soil Moisture (Unit)")
par(new=T)
plot(Moist_50cm~Date_Time,FFBS,type="l",xlim = xlim,ylim = ylim,col='blue',xlab="",ylab="")