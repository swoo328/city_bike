library(tidyverse)
library(janitor)
library(ggplot2)
library(lubridate)
library(geosphere)

# read in the data
bike_df <- rbind(read.csv("202004-divvy-tripdata.csv"),
                         read.csv("202005-divvy-tripdata.csv"),
                         read.csv("202006-divvy-tripdata.csv"),
                         read.csv("202007-divvy-tripdata.csv"),
                         read.csv("202008-divvy-tripdata.csv"),
                         read.csv("202009-divvy-tripdata.csv"),
                         read.csv("202010-divvy-tripdata.csv"),
                         read.csv("202011-divvy-tripdata.csv"),
                         read.csv("202012-divvy-tripdata.csv"),
                         read.csv("202101-divvy-tripdata.csv"),
                         read.csv("202102-divvy-tripdata.csv"),
                         read.csv("202103-divvy-tripdata.csv"))

View(bike_df)

# Checking columns and datatypes
colnames(bike_df)
glimpse(bike_df)
str(bike_df)

# Check if there's nulls values 
is.null(bike_df)

# Check for missing values
# colSum(is.na(df)) counts how many na values in each column
missing_values <- colSums(is.na(bike_df))
# Prints the columns with missing values
print(missing_values[missing_values > 0])

# Check for duplicated data
duplicated_rows <- bike_df[duplicated(bike_df), ]
print(duplicated_rows)

# Removing empty rows and columns
bike_df <- janitor::remove_empty(bike_df, which = c("cols"))
bike_df <- janitor::remove_empty(bike_df, which = c("rows"))

# Select rows with na values in any column
na_rows <- bike_df[!complete.cases(bike_df), ]
na_rows

# Rename Column
bike_df <- bike_df %>% 
  rename(member_type = member_casual)
# Convert character to Date/Time
bike_df$start_time <- lubridate::ymd_hms(bike_df$started_at)
bike_df$end_time <- lubridate::ymd_hms(bike_df$ended_at)

bike_df$start_hour <- lubridate::hour(bike_df$started_at)
bike_df$end_hour <- lubridate::hour(bike_df$ended_at)

# Create Date Field
bike_df$start_date <- as.Date(bike_df$start_time)
bike_df$end_date <- as.Date(bike_df$end_time)

# duration of the bike ride  
bike_df$duration <- bike_df$end_time - bike_df$start_time

# ride distance in km 
bike_df$ride_distance <- distGeo(matrix(c(bike_df$start_lng, bike_df$start_lat), ncol=2), matrix(c(bike_df$end_lng, bike_df$end_lat), ncol=2))/1000


# Remove trips one min or less
# Remove trips that are 0 distance or lower 
bike_df <- filter(bike_df, duration > 60) %>% 
  filter(ride_distance > 0)

# Summarize
summary(bike_df)

# Count for rider for each month
bikeride_month_summary <- bike_df %>% 
  group_by(member_type,month) %>% 
  summarize(ride_count = length(ride_id), average_ride_duration = mean(duration), median_duration = median(duration),
            min_ride_duration = min(duration),max_ride_duration = max(duration), average_ride_distance = mean(ride_distance),
            median_ride_distance = median(ride_distance), min_ride_distance = min(ride_distance),
            max_ride_distance = max(ride_distance))

# Count for rides per month 
  bikeride_ride_summary <- bike_df %>% 
  group_by(member_type, rideable_type, month) %>%
  summarize(ride_count = length(ride_id), average_ride_duration = mean(duration), median_duration = median(duration),
            min_ride_duration = min(duration),max_ride_duration = max(duration), average_ride_distance = mean(ride_distance),
            median_ride_distance = median(ride_distance), min_ride_distance = min(ride_distance),
            max_ride_distance = max(ride_distance))
  

# Count for rides for each day of the week
  bikeride_weekday_summary <- bike_df %>% 
    group_by(member_type, day_of_week) %>% 
    summarize(ride_count = length(ride_id), average_ride_duration = mean(duration)) %>% 
  
  bikeride_weekday_summary$day_of_week <- factor(bikeride_weekday_summary$day_of_week,
                                                 levels = c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"))
  bikeride_weekday_summary2 <- bikeride_weekday_summary[order(bikeride_weekday_summary$day_of_week), ]

# ggplot Ride duration per month
  ggplot(bikeride_month_summary)+
    geom_col(mapping = aes(x = month, y = average_ride_duration, fill = member_type), position = "dodge")+
    labs(x = "Month", y = "Average Ride Duration(secs)", title = "Ride Duration By Month", fill = "Member Type")

# ggplot Ride Count per month
  ggplot(bikeride_month_summary)+
    geom_col(mapping = aes(x = month, y = ride_count, fill = member_type), position = "dodge")+
    labs(x = "Month", y = "Number of Rides", title = "Ride Count By Month", fill = "Member Type")

# ggplot Ride duration during the week
  ggplot(bikeride_weekday_summary2)+
    geom_col(mapping = aes(x = day_of_week, y = average_ride_duration, fill = member_type), position = "dodge")+
    labs(x = "Day Of The Week", y = "Average Ride Duration(secs)", title = "Ride Duration During The Week")
  
# ggplot Ride Count during the week
  ggplot(bikeride_weekday_summary2)+
    geom_col(mapping = aes(x = day_of_week, y = ride_count, fill = member_type), position = "dodge")+
    labs(x = "Day Of The Week", y = "Ride Count", title = "Ride Count During The Week")

  # ggplot per bike
  ggplot(bikeride_ride_summary)+
      geom_col(mapping = aes(x=month, y = average_ride_duration, fill = rideable_type), position = "dodge")