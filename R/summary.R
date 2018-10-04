
summary.simulation<-function(p){
  cat(attr(p,"type"), "realisations of an AR(1) process with length","\n", attr(p,"steps"), ", intital value", attr(p,"initial_value"), 
      ", phi=", attr(p,"phi"))
}