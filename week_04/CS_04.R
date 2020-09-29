library(tidyverse)
library(nycflights13)
library(dbplyr)
flights%>%left_join(airports,c("dest" = "faa"))%>%arrange(desc(distance))%>%slice(1L)%>%select(name)

flights%>%left_join(airports,c("dest" = "faa"))%>%select(origin,dest,name)
flights%>%left_join(airports,c("origin" = "faa"))%>%select(origin,dest,name)

                
                