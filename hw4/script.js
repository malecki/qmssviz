/* 
steps for mapping our ecstasy project data:
1. obtain data via R scraping and cleaning scripts
2. save in CSV format
3. ecstasy data, each "observation" (row) consists of the year, the category (pure MDMA, more MDMA, less MDMA, no MDMA, and unknown), count, and proportion by year).
4. before we start, we have to reference some scripts in our index.html, specifically, d3.js, style.css, and this script, script.js. 
5. I would like to make a stacked bar chart by year, and within each year, have stacked bars representing the four categories of pure MDMA, more MDMA, less MDMA, no MDMA, and unknown. 
*/

/* step 3, loading the data and getting it to proper numeric formats */

var dataset;  //set global variable

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
    }
});

/* isolate the count property of each object */

for(index in dataset) { console.log(dataset[index].count) }  //prints the values we want in our simple bar graph to the console//

var obj_count = [];  //create an empty array
for(index in dataset) {   
  obj_count[index] = dataset[index].count  //saves object count in the array
} 

/* for the sake of the assignment, let's feed in the "count" property of each object into a simple bar chart using SVGs
1. first decide on the size of a new SVG by defining variables width and height
2. use chain methods to make a variable called svg (for faster indexing later on) that finds the body in the DOM, appends a yet to be created svg element, and gives it some attributes (e.g. width and height).
3. using that defined variable svg, we generate some rectangles and give them some scalable, dynamic attributes so that they don't just lie on top of each other
4. this is also the time where we ask for the proper data to be appended to the rectangles that are being created
5. write some dynamic functions that deal with the upside-down issues of svg
*/








