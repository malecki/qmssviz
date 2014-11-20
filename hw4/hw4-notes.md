---
title: 2014-11-19-Florence-Lee
output: html_document
---
## Data
For HW4, I am going to use data from the Pew Research Center's January 2014 eReading and Gadgets survey. I am interested in comparing smartphone use across different race/ethnicity groups. 

The dataset is in .CSV format, which makes it easy for Javascript consumption. I had to tidy-up the dataset before using it, however, and the cleaning script is included (*cleaningscript.R*). The final dataset has three columns: "Race", "Cellphone", "Smartphone". (There is also "% Smartphone", which I will drop.)

## Graphs
I want to make a stacked bar graph. The height of each bar graph will show how many survey participants used cellphones, grouped by race. The bar will be split between those who use smartphones and those who use non-smartphones. The counts of cellphone and smartphone users are in the columns of the data set. 

I created a draft of what I would _like_ the graph to look like in R. (The code is at the bottom of the *cleaningscript.R*). In order to create a stacked bar graph, I have to rearrange the data array that I would normally feed into d3 for a normal barchart. I didn't know how to program this rearrangement, so I just did it by hand.

## Data Shape

      var dataset = [
        { race: "Asian/Pacific Islander", cellphone: 20, smartphone: 15 },
        { race: "Black", cellphone: 100, smartphone: 64 },
        { race: "Mixed race/Other", cellphone: 43, smartphone: 36 },
        { race: "Native American", cellphone: 11, smartphone: 7 },
        { race: "White", cellphone: 689, smartphone: 373 }
        ];
  
This is what the data would look like in order to use *d3.layout.stac()*:

  		var dataset = [
				[
					{ x: 0, y: 20 },
					{ x: 1, y: 100 },
					{ x: 2, y: 43 },
					{ x: 3, y: 11 },
					{ x: 4, y: 689 }
				],
				[
					{ x: 0, y: 15 },
					{ x: 1, y: 64 },
					{ x: 2, y: 36 },
					{ x: 3, y: 7 },
					{ x: 4, y: 373 }
				]
			];

## Loading the Dataset 
In index.html, I created *dataset* from my rearranged array. If I wanted to just obtain the data using *d3.csv*, however, I would use the following code:

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
        
## Next Steps
(1) Flip the bar graph... I think I have to play around with the height and the data values.
(2) Create axes, labels, and a legend.
	
  



