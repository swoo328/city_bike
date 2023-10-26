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

View the Dataset

![image](https://github.com/swoo328/city_bike/assets/31424334/5d32f162-0c37-4a87-9c1d-39d1dd1adc4e)

Check the data type and format

Column Names

![image](https://github.com/swoo328/city_bike/assets/31424334/638f0631-c5e2-481d-bcbf-f8b7927d77f2)

Checking the datatypes of the dataset

![image](https://github.com/swoo328/city_bike/assets/31424334/3e71718b-c4d9-4ffc-96c2-959bcd3155b5)

![image](https://github.com/swoo328/city_bike/assets/31424334/99b48ae6-6de6-4c09-a7c8-f8777e079518)

Check if there's null values

![image](https://github.com/swoo328/city_bike/assets/31424334/01603ba1-5f19-451d-ac08-fa86848b1272)

Check for duplicated data

![image](https://github.com/swoo328/city_bike/assets/31424334/ebfd8b27-e1a5-4db7-80e2-b133ce600a75)

Check if there's any missing values and check if the dataset have any NA values

![image](https://github.com/swoo328/city_bike/assets/31424334/79d6a339-9ae3-4bdd-a73e-c5bb3ee242cf)

Convert character to Data/Time

![image](https://github.com/swoo328/city_bike/assets/31424334/02006263-3ad8-4468-88f2-37fa43da9625)

Rename Column

![image](https://github.com/swoo328/city_bike/assets/31424334/feda773d-ff13-42c5-a954-07d261432a27)

![image](https://github.com/swoo328/city_bike/assets/31424334/a10a4288-bde9-445a-a5b5-e81f27e1db89)

![image](https://github.com/swoo328/city_bike/assets/31424334/590f8443-51de-4097-b8c9-6d3338c71f2b)









