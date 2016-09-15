## The Editor

vals <- seq(1,100)



## Vectors

counts =c(4,3,7,5)

## Lists



## Factors



## Data Frames

df= data.frame(education,counts)

## Exercise 1

species=c("a","b", "c", "d")
species
df2
colnames(df2)
## Names
df[,1]
df


## Subsetting ranges

days <- c("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday")

weekdays2= days[c(-1,-7)]
weekdays
?seq
weekdays3=days[seq(from=2, to=6, by=2)]
weekdays3
wd2=wd["Monday","Wednesday","Friday"]
wd=as.vector(days)
## Exercise 2

...

## Anatomy of a function

first=function(x) {
  result =x[1,1]
  return(result)
}
first(df)
## Exercise 3

df
sub
sub=df[]
## Distributions and statistics

x <- rnorm(..., mean = .., sd = ...)
y <- r...(n = 100, size = 50, ...)

fit <- ...

## Exercise 4

...

## Install missing packages

requirements <- c('dplyr',
                  'ggplot2',
                  'leaflet',
                  'RSQLite',
                  'rgdal',
                  'rgeos',
                  'raster',
                  'shiny',
                  'sp',
                  'tidyr',
                  'tmap')
missing <- setdiff(requirements,
                   rownames(installed.packages()))

if (length(missing) !=0) {
  install.packages(missing)
}
library(RSQLite)

