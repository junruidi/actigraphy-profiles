rm(list = ls())
source("plot_profile.R")

actpath = "data/act.csv"
flagpath = "data/wear.csv"
getData = function(actpath = actpath, flagpath = NULL){
  act = read.csv(actpath, stringsAsFactors = F)
  if(is.null(flagpath)){
    flag = NULL
  }else{
    flag = read.csv(flagpath, stringsAsFactors = F)
  }
  return(list(act = act, flag = flag))
}
library(shiny)

# # To run without flag
# act = getData(actpath = actpath)$act
# flag = getData(actpath = actpath)$flag

# To run with wear flag
act = getData(actpath = actpath, flagpath = flagpath)$act
flag = getData(actpath = actpath,flagpath = flagpath)$flag

runApp()

