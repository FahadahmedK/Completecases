##This is to get the number of complete observations in all the files
complete<-function(directory, id=1:332) {
  filelist<-list.files(path = directory, pattern = ".csv", full.names = TRUE)
  nobs<- numeric()
  
  for (i in id) {
    data<-read.csv(filelist[i])
    nobs<- c(nobs, sum(complete.cases(data)))
  }
  data.frame(id, nobs)
}


