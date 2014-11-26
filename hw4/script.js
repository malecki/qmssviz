/* set area */

var margin = {top: 20, right: 55, bottom: 30, left: 40},  //set margin  
    width = 1000 - margin.left - margin.right,
    height = 500 - margin.top - margin.bottom;

var x = d3.scale.ordinal()  //set type of scale and output
    .rangeRoundBands([0, width], .1);

var y = d3.scale.linear()  //set type of scale and output
    .range([height, 0]);

var xAxis = d3.svg.axis()  //set scale and orientation
    .scale(x)
    .orient("bottom");

var yAxis = d3.svg.axis()  //set scale and orientation
    .scale(y)
    .orient("left");

var area = d3.svg.area()  //sets eventual stacked area, same x, stacked y
  .interpolate("cardinal")
  .x(function (d) { return x(d.label) + x.rangeBand() / 2; })
  .y0(function (d) { return y(d.y0); })
  .y1(function (d) { return y(d.y0 + d.y); });

var svg = d3.select("body").append("svg")  //select body, prep svg
    .attr("width", width + margin.left + margin.right)
    .attr("height", height + margin.top + margin.bottom)
    .append("g")
    .attr("transform", "translate(" + margin.left + "," + margin.top + ")");

var color = d3.scale.ordinal()  //use these ranges of colors
  .range(["#001c9c","#101b4d","#475003","#9c8305","#d3c47c"]);

var stack = d3.layout.stack()  //stack function baseline y0 on top of y value
    .offset("zero")
    .values(function (d) { return d.values; })
    .x(function (d) { return x(d.label); })
    .y(function (d) { return d.value; });

/* loading data */

var dataset;  //set global variable

d3.csv("mdma_cast.csv", function(d) {  //d3.csv can take a callback function
  return {
    "year": d.year,
    "Pure MDMA": +d.pure, //convert to numeric
    "More MDMA": +d.more,  //covert to numeric
    "Less MDMA": +d.less, //convert to numeric
    "No MDMA": +d.none, //convert to numeric
    "Unknown": +d.unknown  //convert to numeric;  date //new Date(+d.year, 0, 1)
  };
},

function(error, data) {
  if (error) {
    return console.warn(error);
  } else {  //if error, warn us in console
    dataset = data;  //once loaded, store in variable dataset
    console.log(data);  //once loaded, log to console for proof
  }
  
  var labelVar = "year";  //categorical variable that has labels for the chart
  console.log(labelVar); 
  var varNames = d3.keys(dataset[0])  //array of variable names for each series
    .filter(function(key) { return key !== labelVar;});
  console.log(varNames);

  color.domain(varNames);

  var seriesArr = [], series = {};  //basic structure of series array
  varNames.forEach(function(name) {
    series[name] = {name: name, values:[]};
    seriesArr.push(series[name]);
  });
  console.log(seriesArr); 

  dataset.forEach(function(d) {  //populates the previous array we made
    varNames.map(function(name) {
      series[name].values.push({label: d[labelVar], value: +d[name]});
    });
  });
  console.log(seriesArr);

  x.domain(dataset.map(function(d) { return d.year; })); //categorical variable year for our x-axis domain

  stack(seriesArr);  //stacks it so that categorical variables have the same x and corresponding y0 and y values that stack on top of each other
  console.log("stacked seriesArr", seriesArr);

  y.domain([0, d3.max(seriesArr, function(c) {  //look through each series, each values, and establish min and max
    return d3.max(c.values, function(d) { return d.y0 + d.y; });
  })]);

  svg.append("g")  //x-axis stuff
    .attr("class", "x axis")
    .attr("transform", "translate(0," + height + ")")
    .call(xAxis);
  
  svg.append("g")  //y-axis stuff
    .attr("class", "y axis")
    .call(yAxis)
    .append("text")
    .attr("transform", "rotate(-90)")
    .attr("y", 6)
    .attr("dy", ".71em")
    .style("text-anchor", "end")
    .text("Composition Count");

  var selection = svg.selectAll(".series")
    .data(seriesArr)
    .enter().append("g")
    .attr("class", "series");

  selection.append("path")
    .attr("class", "streamPath")
    .attr("d", function (d) { return area(d.values); })
    .style("fill", function (d) { return color(d.name); })
    .style("stroke", "grey");

  var legend = svg.selectAll(".legend")
    .data(varNames.slice().reverse())
    .enter().append("g")
    .attr("class", "legend")
    .attr("transform", function (d, i) { return "translate(55," + i * 20 + ")"; });
  
  legend.append("rect")
    .attr("x", width - 10)
    .attr("width", 10)
    .attr("height", 10)
    .style("fill", color)
    .style("stroke", "grey");
  
  legend.append("text")
    .attr("x", width - 12)
    .attr("y", 6)
    .attr("dy", ".35em")
    .style("text-anchor", "end")
    .text(function (d) { return d; });

  var points = svg.selectAll(".seriesPoints")
    .data(seriesArr)
    .enter().append("g")
    .attr("class", "seriesPoints");
        
  points.selectAll(".point")
    .data(function (d) { return d.values; })
    .enter().append("circle")
    .attr("class", "point")
    .attr("cx", function (d) { return x(d.label) + x.rangeBand() / 2; })
    .attr("cy", function (d) { return y(d.y0 + d.y); })
    .attr("r", "8px")
    .style("fill",function (d) { return color(d.name); })
    .on("mouseover", function (d) { showPopover.call(this, d); })
    .on("mouseout",  function (d) { removePopovers(); })

  function removePopovers () {
    $('.popover').each(function() {
      $(this).remove();
    }); 
  }
  
  function showPopover (d) {
    $(this).popover({
      title: d.name,
      placement: 'auto top',
      container: 'body',
      trigger: 'manual',
      html : true,
      content: function() { 
        return "Year: " + d.label + 
               "<br/>Count: " + d3.format(",")(d.value ? d.value: d.y1 - d.y0); }
    });
    $(this).popover('show')
  }
});













