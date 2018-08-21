if(!"timeDate" %in% installed.packages()){
  install.packages("timeDate")
}

plot_profile = function(act, flag = NULL, id, dates){
  a = subset(act, ID == id & Date %in% c(dates))
  if(! is.null(flag)){
    w = subset(flag, ID == id & Date %in% c(dates))
  }else{
    w = NULL
  }
  
  tpos = substr(as.character(timeDate::timeSequence(from  = Sys.Date(),to = Sys.Date()+1, by = "min")),12,16)
  
  n.day = nrow(a)
  
  par(mfrow = c(n.day,1))
  par(mar=c(5,5,4,5))
  for(n in 1:n.day){
    a.i = c(t(a[n,-c(1:2)]))
    plot(x = c(1:1440), y = a.i, type = "h",ylab = "Activity Counts",yaxt = "n",
         main = paste0("Subject: ", id, " - Date: ", dates[n]),cex.lab = 1.2, xlab = "Time",xaxt = "n")
    if(!is.null(w)){
      w.i = c(t(w[n,-c(1:2)]))
      ind.nonwear = which(w.i == 0)
      ind.wear = which(w.i == 1)
      abline(v = ind.wear, col = rgb(0, 191, 255, 30, maxColorValue = 255))
      abline(v = ind.nonwear, col = rgb(200, 34, 34, 10, maxColorValue = 255))
    }
    axis(side = 1, at = c(seq(1,1440,240),1440), labels = tpos[c(seq(1,1440,240),1440)], cex.axis = 1.2)
    axis(side = 2, cex.axis = 1.2)
    abline(v = c(seq(1,1440,120),1440), col = "azure4",lty = 3, lwd = 0.6)
  }

}