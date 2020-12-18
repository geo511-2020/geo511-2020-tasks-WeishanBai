Correlation analysis between population changing and housing
changing——Taking New York City as an example
================
Weishan Bai
October 19, 2020

# Introduction to problem/question

With the development of economy and urbanization, the dramatic changes
of urban population have accelerated. This phenomenon is more common in
megalopolises. People may move to cities for job opportunities or stay
away from cities for better quality of life. At the same time as the
population is changing, the house will switch between occupied and
vacant. Meanwhile, housing prices will also be affected. In this
research, we take the metropolitan area that New York City as an
example, and show the plot and form of the changes in population, number
of housing, housing value and household income in New York City. In
addition, the method of regression analysis is used to explore the
correlation between these variables. This study will propose three
hypotheses: 1) The amount of urban population change is negatively
related to the number of vacant houses;2) The value of the house is
positively correlated with the income of the household; 3) The amount of
change in urban population is positively correlated with house value. \#
Problem / Question

This project aims to test the above hypothese that figure out the
relationship between population and housing in NYC.

# Inspiring Examples

## Example 1

![](https://urbanscale.com/wp-content/uploads/2014/02/New-York-and-Austin-Pop-Growth-to-2100-1024x574.png)

This plot shows the increasing trend of population in NYC.

## Example 2

![](https://273aiv293ycr20z8q53p7o04-wpengine.netdna-ssl.com/wp-content/uploads/sites/2/2013/01/1987-Sites.jpg)

This photo shows us the vacant houses in NYC. It raises my insterst that
what factors do impact on the vacant houses in Metropolitan Statistical
Area.

## Example 3

![](https://29y1pu2xvdbzd0g2823sa275-wpengine.netdna-ssl.com/wp-content/uploads/2020/08/NYC-Real-Estate-Appreciation-Forecast.jpg)

Does the housing price influent on the number of vacant housing or be
influence by change of population?

# Proposed data sources

Data: 1)Demographic data set of New York city from 2013-2018 2)Housing
data set of New York city from 2013-2018 3)Economic datas et of New York
city from 2013-2018

[American Community Survey (ACS) Data
Tables](https://www1.nyc.gov/site/planning/planning-level/nyc-population/american-community-survey.page)

# Proposed methods

1.  Download and process the data by using dplyr.
2.  Make plot to visulized the data and show the trend of the change by
    using ggplots.
3.  Do mathematical analysis to test the hypotheses.

# Expected results

For the results, we can clearly see the trend of change of population,
housing and income in NYC. And we can achieve to the hypotheses so that
find the correlationship between those variables.
