library(gapminder)
library(ggplot2)
library(dplyr)
library(tidyverse)
#load dataset
data_table=gapminder
#view the first part of this dataset
head(data_table)
# view data contains kuwait
filter(data_table,country=="Kuwait")
#select data without kuwait
data_filtered=filter(data_table,country!= "Kuwait")
# create plot1
p1=ggplot(data_filtered,aes(x=lifeExp,y=gdpPercap,colour=continent,fill=continent,size=pop/100000))+
  geom_point()+
  facet_wrap(~year,nrow=1)+
  scale_y_continuous(trans = "sqrt")+
  theme_bw()+
  labs(x="Life Expectancy",y="GDP per capita",size="Population(100k)")
p1
