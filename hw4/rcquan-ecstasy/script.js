// Code goes here
// define global variable
var dataset;

d3.json("ecstasy_data.json", function(json) {

  dataset = json;

  // initialize the plot
  update("1999");
  // event listener to be triggered when
  // slider changes to a new value
  d3.select("#nYear").on("input", function() {
    update(+this.value);
  });
});

// update properties and data with given year
function update(nYear) {

  // adjust the text on the range slider
  d3.select("#nYear-value").text(nYear);
  d3.select("#nYear").property("value", nYear);
  // subset the dataset by year
  comp = dataset[nYear].composition;
  prop = dataset[nYear].proportion;
  // make the plot
  createDotPlot(prop, comp);
}

function createDotPlot(prop, comp) {
  // remove any existing svg element
  d3.select("svg")
    .remove();

  // set window size
  var w = 400;
  var h = 600;
  var padding = 30;

  // set the scale for y-axis
  var yScale = d3.scale.linear()
    .domain([0, d3.max(prop, function(d) {
      return d;
    })])
    .range([h - padding, padding])
    .nice();

  // y-axis
  var yAxis = d3.svg.axis()
    .scale(yScale)
    .orient("left")
    .ticks(10);

  // create the svg element
  var svg = d3.select("body")
    .append("svg")
    .attr("width", w)
    .attr("height", h);

  // bind proportion data to points
  svg.selectAll("circle")
    .data(prop)
    .enter()
    .append("circle")
    .attr("fill", "steelblue")
    // dynamic axis scaling
    .attr("cy", function(d) {
      return yScale(d);
    })
    .attr("cx", 100)
    .attr("r", 5);

  // bind composition data to text
  svg.selectAll("text")
  .data(comp)
    .enter()
    .append("text")
    .text(function(d) {
      return d;
    })
    .attr("x", 150)
    .attr("y", function(d, i) {
      return yScale(prop[i]);
    });

  // add y-axis
  svg.append("g")
    .attr("class", "axis")
    .attr("transform", "translate(" + padding * 3 + ",0)")
    .call(yAxis);

  // add y-axis label
  svg.append("text")
    .attr("class", "y label")
    .attr("transform", "rotate(-90)")
    .attr("y", padding)
    .attr("x", 0 - h/2 + padding * 2)
    .attr("dy", "1em")
    .attr("text-anchor", "end")
    .text("Proportion of Total Ecstasy Pills Tested");
}
