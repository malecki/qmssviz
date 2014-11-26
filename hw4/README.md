---
title: Playing with D3 + Ecstasy Project
author: Frank Chen, fc2451
date: November 15, 2014
---

# HW 4 
1. questions and code are found in script.js
2. data used was from our ecstasy project, details below
3. stacked bar chart is the final goal, more updates to come as we play with javascript and d3

# Ecstasy

Visualizing laboratory pill testing data from EcstasyData.org, an independent laboratory testing program run by the Erowid Center.

**Collaborators**: Ryan Quan (rcquan), Frank Chen (frankchen07)

## Graph Sketches
* Ratio of MDMA in pills sold as ecstasy with respect to time
* Breakdown of chemical substances in pills sold as ecstasy with respect to time
* Ratio of MDMA in pills by city and/or state (possibly animated)
* Seasonal trends
* Following a tablet through time
* Distribution of color and branding of ecstasy pills

## To-Do List
### Reading and Cleaning Data
1. Read the XML data from the following [URL](http://www.ecstasydata.org/results_xml.php?sold_as_ecstasy=yes&Y1=2013&Y2=2014) into R
2. Parse values in "actives" tag to target format using `melt` from `reshape2`
3. String manipulation to get `substance_name` and `ratio` into separate columns
4. Use `dplyr` to calculate ratio of MDMA and bin into the following groups:
    * == 1 Only MDMA
    * >= .5 More MDMA than Shit
    * < .5 Less MDMA than Shit
    * == 0 No MDMA 
5. Do a one-to-many merge to obtain complete and tidy data set

# Designing the Visualization

## Overview
MDMA, or 'ecstasy' is a 'psychedelic amphetamine' that has gained popularity over the past 20 years because of its ability to produce strong feelings of comfort, empathy, and connection to others. It most frequently comes in tablet form, although it is also found in capsules or as powder. 

Because MDMA is so popular and because it goes well with dance parties, the demand for it usually exceeds supply--especially at any given location on any given night. This creates an opening for unscrupulous individuals to sell virtually anything as 'ecstasy'. While 'ecstasy' is the popular name for MDMA, the functional definition of ecstasy is any pill represented as MDMA on the street. Ecstasy pills are notoriously unreliable in content, more so than most other street drugs and don't necessarily contain MDMA or any psychoactive. 

## Goal
We will be exploring and visualizing pill test data from 1999-2014 to uncover geo-spatial and time-series trends relating to the sale and chemical makeup of ecstasy tablets sold on the streets. 

Our goal for this data visualization project is to help reduce harm and misinformation associated with ecstasy. By creating an engaging product, we hope to encourage prospective and current users of the drug to conduct more thorough research before, if ever, they decide to use.

## Data Source
With permission from the owners, we will be scraping laboratory pill test data directly from the website of [EcstasyData.org](http://www.ecstasydata.org), an independent laboratory pill testing program run by the Erowid Center.

## References
1. [https://www.erowid.org/chemicals/mdma/mdma_basics.shtml](https://www.erowid.org/chemicals/mdma/mdma_basics.shtml)
2. [EcstasyData.org](http://www.ecstasydata.org)