library(raster)
library(sp)
library(spData)
library(tidyverse)
library(sf)

data(world)
tmax_monthly <- getData(name = "worldclim", var="tmax", res=10)

new_world<-world%>%filter(name_long != 'Antarctica')%>%as('Spatial')
#str(tmax_monthly)
#plot(tmax_monthly)

gain(tmax_monthly)<-0.1

tmax_annual<-max(tmax_monthly)
names(tmax_annual)<-'tmax'

max_country<-raster::extract(tmax_annual,new_world,fun=max,na.rm=T, small=T, sp=T)%>%st_as_sf()


max_country%>%ggplot()+geom_sf(aes(fill=tmax))+
  scale_fill_viridis_c(name="Annual\nMaximum\nTemperature (C)")+
  theme(legend.position = 'bottom')

max_country%>%group_by(`continent`)%>%top_n(1,`tmax`)%>%dplyr::select(name_long,continent,tmax)%>%arrange(desc(tmax))%>%st_set_geometry(NULL)
