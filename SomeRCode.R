lat_lon_dfinput <- data.frame(id = c("lakeMichigan","douroRiver"),
                              latitude = c(43.45,41.51), 
                              longitude = c(-87.22,-5.49))

newdf <- matrix(nrow = nrow(lat_lon_dfinput), ncol=1)
newdf <- data.frame(newdf)
newdf$X <- lat_lon_dfinput$id

newdf

stationid <- matrix(nrow = nrow(lat_lon_dfinput), ncol = 1)

for(i in 1:nrow(lat_lon_dfinput)){
  newlist <- as.data.frame(meteo_nearby_stations(lat_lon_df = lat_lon_dfinput[i,], station_data = station_data, limit = 1))
  stationid[i] <- dfnew[,1]
}

newdf$stationid <- stationid
newdf