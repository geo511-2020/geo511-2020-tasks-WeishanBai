library(tidyverse)
library(spData)
library(reprex)
data(world)

ggplot(world,aes(x=gdpPercap, y=continent, color=continent))+
   geom_density(alpha=0.5,color=F)

reprex(
  {
    library(tidyverse)
    library(spData)
    library(reprex)
    data(world)
    ggplot(world,aes(x=gdpPercap, y=continent, color=continent))+
      geom_density(alpha=0.5,color=F)
  },
  venue = "html"
)