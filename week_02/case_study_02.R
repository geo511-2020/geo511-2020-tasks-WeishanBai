library(tidyverse)
dataurl="https://raw.githubusercontent.com/AdamWilsonLab/GEO511/master/CS_02.csv"
temp=read_csv(dataurl,
              skip=1, #skip the first line which has column names
              na="999.90", # tell R that 999.90 means missing in this dataset
              col_names = c("YEAR","JAN","FEB","MAR", # define column names 
                            "APR","MAY","JUN","JUL",  
                            "AUG","SEP","OCT","NOV",  
                            "DEC","DJF","MAM","JJA",  
                            "SON","metANN"))
view(temp)
summary(temp)
glimpse(temp)
p=ggplot(temp,aes(x=YEAR,y=JJA))+
  geom_line(colour="black",size=0.9)+
  geom_smooth(colour="red")+
  xlab("Year")+
  ylab("Mean Summer Temperatures(C)")+
  ggtitle("Mean Summer Temperature in Buffalo, NY",
          "Summer includes June,July,and August\nData from the Global Historical Climate Network \nRed line is a LOESS smooth")
print(p)

png(file = "week_02/CS02.png", bg = "transparent")
print(p)
dev.off()

#ggsave("CS02_01.png",plot=p)
#unlink("CS02_01.png")