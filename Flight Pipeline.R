# Flight Pipeline
# Nicholas Vollmer
# 11/15/26
# Sort and select nycflights13 flight data in a single dplyr pipeline


# Load the tidyverse (includes dplyr) and the flights dataset
library(tidyverse)
library(nycflights13)


# Sort by earliest scheduled departure, then by largest delay within ties,
# and keep only the scheduled time, delay, carrier, and day of the month
flights %>%
  arrange(sched_dep_time, desc(dep_delay)) %>%
  select(sched_dep_time, dep_delay, carrier, day)

