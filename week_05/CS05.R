library(spData)
library(sf)
library(tidyverse)
library(units)
data(world)
data(us_states)
#plot(world[1])
#plot(us_states[1])
st_crs(world)
# set albers crs
albers="+proj=aea +lat_1=29.5 +lat_2=45.5 +lat_0=37.5 +lon_0=-96 +x_0=0 +y_0=0 +ellps=GRS80 +datum=NAD83 +units=m +no_defs"

buffer=world%>%  
  st_transform(crs=albers)%>%  #transform the crs of world dataset
  filter(name_long=='Canada')%>%  # select canada from it
  st_buffer(dist=10000) # make a buffer area

NY=us_states%>%
  st_transform(crs=albers)%>% #transform the crs of US_STATES dataset
  filter(NAME=="New York") # select NY from it

# intersect ny to buffer to make target area
intersection=st_intersection(buffer,NY)

pp=us_albers_NY%>%ggplot()+
  geom_sf()+  # plot NY
  geom_sf(data=intersection,fill='red')+  # plot target area
  ggtitle('New York Land within 10km')+  # set title
  theme(plot.title = element_text(hjust = 0.5))  # Keep title centered
pp
# 
buffer_area<-intersection%>%st_area()%>% #calculate the area
  set_units("km^2") # transform the units
buffer_area

