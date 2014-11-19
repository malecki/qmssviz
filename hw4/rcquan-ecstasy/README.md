# Homework 4

Author: Ryan Quan
Date: November 20, 2014

## Description

**Out of all pills sold as ecstasy for a given year, how often was chemical X present?**

With the owner's permission, we used R's `XML` package to scrape XML data from [EcstasyData.org](www.ecstasydata.org). We then used `dplyr` for data cleaning and wrote the resulting data to JSON using `RJSONIO`.

## TODO

1. Fix the axis so that movement of points is more apparent.
2. Remove labels for clump of points below y = 0.05. 
3. Add tooltips for more information about chemical compound on hover.
4. Add path transitions to make rank changes more apparent between years.
5. Color points by activity type: "dissociative", "stimulant", etc.
6. Add zoom feature.
7. Add option to remove "MDMA" from graph.