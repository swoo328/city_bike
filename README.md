# How does a bike-share navigate speedy success?

# Background
Cyclistic: A bike-share program that features more than 5,800 bicycles and 600 docking stations. Cyclistic sets itself apart
by also offering reclining bikes, hand tricycles, and cargo bikes, making bike-share more inclusive to people with disabilities
and riders who can’t use a standard two-wheeled bike. The majority of riders opt for traditional bikes; about 8% of riders use
the assistive options. Cyclistic users are more likely to ride for leisure, but about 30% use them to commute to work each
day.

Until now, Cyclistic’s marketing strategy relied on building general awareness and appealing to broad consumer segments. One
approach that helped make these things possible was the flexibility of its pricing plans: single-ride passes, full-day passes, and
annual memberships. Customers who purchase single-ride or full-day passes are referred to as casual riders. Customers who
purchase annual memberships are Cyclistic members.

Moreno has set a clear goal: Design marketing strategies aimed at converting casual riders into annual members. In order to do
that, however, the marketing analyst team needs to better understand how annual members and casual riders differ, why casual
riders would buy a membership, and how digital media could affect their marketing tactics. Moreno and her team are interested in
analyzing the Cyclistic historical bike trip data to identify trends.

# Step 1: Gathering Information For The Task

# Identifying The Business Task
To identify trends in historical bike trip and understand how annual members as well as casual riders use cyclistic.

# Stakeholders
- Lily Moreno: The director of marketing
- Cyclistic executive team

# Step 2: Preparing And Collecting Of Data
I used Cyclistic's historical data to analyze and identify trends.The data has been made available by Motivate International Inc. under this
[License](https://divvybikes.com/data-license-agreement). The datasets are available [here](https://divvy-tripdata.s3.amazonaws.com/index.html). 

# Tasks
1. Identify how the data is organized?
   There are 13 columns in the file. Some of the csv files did not start_station_name, start_station_id, end_station_name, end_station_id columns and will not have empty values.
   There are two types of members: member or casual. There are three types of bikes: electrical, dock and classic. The ids that were provided have alphabet and numbers that are
   12 characters long. The started_at and ended_at columns has date time that is formatted as YYYY-MM-DD HH:MM:SS.
2. Sort and filter the data

# Step 3: Process and Cleaning the Data for Analysis
Tools Used
R: To Process, clean data, analyze and visualize data
# Tasks
1. Check the data for errors. Check the data for its data structure type and format it throughout the cleaning and manipulation process
2. Transform the data
3. Document the cleaning process

The following code chunks were used during the cleaning process:
First, load packages
![image](https://github.com/swoo328/city_bike/assets/31424334/c9fcc4d6-b10d-4078-b337-35501bf19803)

Load the Dataset 
![image](https://github.com/swoo328/city_bike/assets/31424334/8d4f72f6-b112-4c55-8f42-98474dc9a7ba)

