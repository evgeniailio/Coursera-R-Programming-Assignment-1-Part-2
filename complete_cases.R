complete <- function(directory, id=1:332) {

##'directory' is a character vector of length 1 indicating
##the location of the CSV files

##'id' is an integer vector indicating the monitor ID numbers
##to be used

##the complete function returns a data frame where 'station_id' is
##the monitor ID number and 'nobs' is the 
##number of complete cases.
     
     files_list <- list.files(directory, full.names=TRUE)
     station_id <- c()
     nobs <- c()
     
     
     
     for (i in 1:length(id)) {
          
          dat <- read.csv(files_list[id[i]])
          nobs[i] <-sum(complete.cases(dat))
          station_id[i]<- id[i]
          
     }  
     complete_cases<- data.frame(station_id,nobs) 
     complete_cases
     
}