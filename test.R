library(raster) 
library(rasterVis) 
library(magrittr)
raster::rasterOptions(tmpdir="/home/leonidas/tmp/",maxmemory=10e+09,datatype="FLT4S")

tiffs <- list.files(".", sprintf("%s.*tif","clip" ), full.names = T)

s <-stack(tiffs)
NAvalue(s)
levelplot(s,margin=FALSE)




composite <- raster::calc(s,sum, na.rm=T)
levelplot(composite,margin=FALSE)

