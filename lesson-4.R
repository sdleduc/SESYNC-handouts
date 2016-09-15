## Tidy data concept


## Reshaping multiple columns in category/value pairs

library(tidyr)
counts_gather <- gather(counts_df, key = "species", value ="count", wolf:fox)
counts_gather
counts_spread <- spread(counts_gather, key=species, value=count)
counts_spread
?spread
## Exercise 1

counts_gather=counts_gather[-8,]
counts_gather
## Read comma-separated-value (CSV) files

surveys =read.csv('data/surveys.csv', na.strings="")
surveys
surveys[1:6,]
str(surveys)
## Subsetting and sorting

library(dplyr)
surveys_1990_winter <- filter(surveys, year==1990, month %in% 1:3)
str(surveys_1990_winter)
surveys_1990_winter <- select(surveys_1990_winter, record_id, month, day, plot_id, species_id, sex, hindfoot_length, weight)

RO=filter(surveys, species_id=="RO")
str(RO)
RO2=select(RO,record_id, sex, weight)
RO=select(surveys, matches("RO"))
str(RO)
RO2
## Grouping and aggregation

surveys_1990_winter_gb <- group_by(surveys_1990_winter, species_id)

counts_1990_winter <- summarize(surveys_1990_winter_gb, count = n())
counts_1990_winter
## Exercise 3

str(surveys)
DM=filter(surveys, species_id=="DM")
df_DM=select(DM, month, weight, hindfoot_length)
df_DM_gb = group_by(df_DM, month)
df_DM_avg =summarize(df_DM_gb, hfl_avg =mean(hindfoot_length, na.rm=T), wgt_avg=mean(weight, na.rm=T))
str(DM)
df_DM
colMeans(DM)
DM2=colMeans(DM)
?colMeans
## Pivto tables through aggregate and spread

surveys_1990_winter_gb <- group_by(surveys_1990_winter, ...)
counts_by_month <- ...(surveys_1990_winter_gb, ...)
pivot <- ...

## Transformation of variables

prop_1990_winter <- mutate(...)

## Exercise 4

...

## Chainning with pipes

prop_1990_winter_piped <- surveys %>%
  filter(year == 1990, month %in% 1:3)%>%
  select(-year) %>% # select all columns but year
  group_by(species_id)%>% # group by species_id
  summarize(counts=n()) # summarize with counts
prop_1990_winter_piped  
... # mutate into proportions
