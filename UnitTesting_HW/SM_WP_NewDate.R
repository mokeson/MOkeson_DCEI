#Function that changes dates in a vector from the format m/dd/yyyy 00:00 to yyyy-mm-dd 00:00:00
#
#Args
  #df is the dataframe
  #
  #"date_time" is a column in the selected "df", can this be turned into a variable in the function as well?
  #can the format be turned into a variable?
#
#output
  #New date and time format for the "date_time" column

newdate<-function(df)
{
  return(as.POSIXct(as.character(df[,"Date_Time"]),format="%m/%d/%Y %H:%M"))
}