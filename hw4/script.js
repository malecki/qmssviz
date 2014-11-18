/* 
steps for mapping our ecstasy project data:
1. obtain data via R scraping and cleaning scripts
2. save in CSV format
3. ecstasy data, each "observation" (row) consists of the year, the category (pure MDMA, more MDMA, less MDMA, no MDMA, and unknown), count, and proportion by year).
4. before we start, we have to reference some scripts in our index.html, specifically, d3.js, style.css, and this script, script.js. 
5. I would like to make a stacked bar chart by year, and within each year, have stacked bars representing the four categories of pure MDMA, more MDMA, less MDMA, no MDMA, and unknown; for the sake of the assignment, let's first just feed in the "count" property of each object into a simple bar chart using SVGs. Once that is done, further updates to move towards the stacked bar chart will come!
*/

/*
d3 steps:
1. first decide on the size of a new SVG by defining variables width and height
2. use chain methods to make a variable called svg (for faster indexing later on) that finds the body in the DOM, appends a yet to be created svg element, and gives it some attributes (e.g. width and height).
3. using that defined variable svg, we generate some rectangles and give them some scalable, dynamic attributes so that they don't just lie on top of each other
4. this is also the time where we ask for the proper data to be appended to the rectangles that are being created
5. write some dynamic functions that deal with the upside-down issues of svg
*/

/*
while writing the code below, I had the for loop that saves obj_count originally outside the callback function, which didn't work, as the entire script was running without my data actually loaded into "dataset." Jamming the code that extracts counts from each object in "dataset" into the callback function fixed the issue; our d3 code should also be within the callback function
*/

/*
loading the data and getting it to proper numeric formats
*/

var dataset;  //set global variable
var obj_count = [];  //create an empty array for desired data later

d3.csv("mdma_prop.csv", function(d) {  //d3.csv can take a callback function
  return {
    count: +d.count,  //convert to numeric
    mdma: d.mdma,
    proportion: +d.proportion, //convert to numeric
    year: new Date(+d.year, 0, 1)  //convert to date
  };
}, function(error, data) {
  if (error) {
    return console.warn(error);
  } else {  //if error, warn us in console
    dataset = data;  //once loaded, store in variable dataset
    console.log(data);  //once loaded, log to console for proof
    for(index in dataset) {  //log count values that we want to console
      console.log(dataset[index].count); 
    } 
    for(index in dataset) {   
      obj_count[index] = dataset[index].count;  //saves object count
    }
    }
    var w = 1000;
    var h = 200;
    var barPadding = 2;
    var svg = d3.select("body")  //selects body
                .append("svg")  //appends empty svg element
                .attr("width", w)   //assigns pre-defined width
                .attr("height", h);  //assigns pre-defined height
    svg.selectAll("rect")  //selects empty rectangles
        .data(obj_count)  //uses our data
        .enter()  //enters our data and hands it off for processing, each datum gets a rectangle
        .append("rect")  //inserts corresponding rects into the DOM
        .attr("x", function(d, i) {  //index * (1000/data length) = position
          return i * (w / obj_count.length);
        })
        .attr("y", function(d) {  //this tells us where height begins, 0 means it starts at the top, h, or 200, is at the bottom, h - d tells it to begin part way down, and fill to the bottom
          return h - d;
        })
        .attr("width", (w / obj_count.length) - barPadding)  //width = position minus bar padding
        .attr("height", function(d) {  //height using data
          return d
        }); 
});













