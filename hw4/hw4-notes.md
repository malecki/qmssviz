---
title: 2014-11-19-Florence-Lee
output: html_document
---
## Data
For HW4, I am going to use data from the Pew Research Center's January 2014 eReading and Gadgets survey. I am interested in looking at the differences in cellphone and smartphone use among different race/ethnicity groups. 

The dataset is in .CSV format, which makes it easy for Javascript consumption. I had to tidy-up the dataset before using it, however, and the cleaning script is included (*cleaningscript.R*). The final dataset has three columns: "Race", "Frequency", and "Percent".

## Graphs
I want to make a stacked bar graph. The height of each bar graph will show how many survey participants used cellphones, grouped by race. The bar will be split between those who use smartphones and those who use non-smartphones. The "Percent" column in the dataset tells us the percentage of survey respondents that used smartphones as opposed to non-smartphones.

## Data Shape
var dataset = [
  { race: "Asian/Pacific Islander", cellphone: 20, smartphone: 15 },
  { race: "Black", cellphone: 100, smartphone: 64 },
  { race: "Mixed race/Other", cellphone: 43, smartphone: 36 },
  { race: "Native American", cellphone: 11, smartphone: 7 },
  { race: "White", cellphone: 689, smartphone: 373 }
  ];

## Loading the Dataset 
Look at HTML code to see how I loaded the data. Because I wanted to do a stacked graph, I had to manually enter in the array values. If I were just to directly load the data set, I could just do the following:

var dataset;
d3.csv(“ereadData.csv”, function(error, data) {
  if (error) {
		console.log(error);
	} else {
		console.log(data);
	dataset = data;
	}
});
  
## Mapping Data onto SVG elements
In order to map my data onto SVG elements, I need to create the svg object and then append the data onto the object. This is done in the following steps:

  		var svg = d3.select("body")
						.append("svg")
						.attr("width", w)
						.attr("height", h);
	  		var groups = svg.selectAll("g")
				.data(dataset)
				.enter()
				.append("g")
				.style("fill", function(d, i) {
					return colors(i);
				});
        

	
  



