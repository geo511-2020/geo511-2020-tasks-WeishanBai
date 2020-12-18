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
# group data by contient and year
by_group=group_by(data_filtered,continent,year)
# sum data after grouping
gapminder_continent=summarise(by_group,gdpPercapweighted = weighted.mean(x = gdpPercap, w = pop),pop = sum(as.numeric(pop)))
gapminder_continent
# For the use of 'inherit.aes = FALSE', I referred to internet source:https://ggplot2.tidyverse.org/reference/geom_point.html
p2=ggplot(data_filtered,aes(x=year,y=gdpPercap,colour=continent,group=country,fill=continent,size=pop/100000))+
  geom_line(data=data_filtered,size=0.7)+
  geom_point()+
  geom_line(data=gapminder_continent,aes(x=year,y=gdpPercapweighted),color="black",inherit.aes = FALSE)+
  geom_point(data=gapminder_continent,aes(x=year,y=gdpPercapweighted,size=pop/100000),color="black",inherit.aes = FALSE)+
  facet_wrap(~continent,nrow=1)+
  theme_bw()+
  labs(x="Year",y="GDP per capita",size="Population(100k)")
p2
# save the plot
ggsave("week_03/CS03_01.png",plot=p1)  
ggsave("week_03/CS03_02.png",plot=p2)