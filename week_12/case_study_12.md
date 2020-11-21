Resource Presentation
================
Weishan Bai
Nov 20, 2020

``` r
library(leaflet)
```

``` r
m <- leaflet()
m <- addTiles(m)
m <- addMarkers(m, lng=174.768, lat=-36.852, popup="The birthplace of R")
m
```

![](case_study_12_files/figure-gfm/package&data-1.png)<!-- -->
