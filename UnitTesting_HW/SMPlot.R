#Function that plots 
#
#Args
  #dt1 is the date and time for the dataframe for the first soil moisture sensor depth
  #data1 is thedata for first soil moisture sensor depth
  #xlim is the limit for the x axis
  #ylim is the limit for the y axis
  #dt2 is the date and time for the dataframe for the second soil moisture sensor depth
  #data2 is thedata for second soil moisture sensor depth
#
#output
  #a plot with date on the x axis and soil moisture or water potential data on the y axis

SM_plot<-function(dt1,data1,xlim,ylim,dt2,data2)
{
  plot(data1~dt1,type="l",xlim = xlim,ylim = ylim,col='red',xlab="Date",ylab="Soil Moisture (m3/m3)")
par(new=T)
plot(data2~dt2,FFBS,type="l",xlim = xlim,ylim = ylim,col='blue',xlab="",ylab="")
}
