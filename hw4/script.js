var margin = {top: 20, right: 55, bottom: 30, left: 40},
    width = 1000 - margin.left - margin.right,
    height = 500 - margin.top - margin.bottom;

var x = d3.scale.ordinal()
    .rangeRoundBands([0, width], .1);

var y = d3.scale.linear()
    .range([height, 0]);

var xAxis = d3.svg.axis()
    .scale(x)
    .orient("bottom");

var yAxis = d3.svg.axis()
    .scale(y)
    .orient("left");

var area = d3.svg.area()
  .interpolate("cardinal")
  .x(function (d) { return x(d.label) + x.rangeBand() / 2; })
  .y0(function (d) { return y(d.y0); })
  .y1(function (d) { return y(d.y0 + d.y); });

var svg = d3.select("body").append("svg")
    .attr("width", width + margin.left + margin.right)
    .attr("height", height + margin.top + margin.bottom)
    .append("g")
    .attr("transform", "translate(" + margin.left + "," + margin.top + ")");

var color = d3.scale.ordinal()
  .range(["#001c9c","#101b4d","#475003","#9c8305","#d3c47c"]);

var stack = d3.layout.stack()
    .offset("zero")
    .values(function (d) { return d.values; })
    .x(function (d) { return x(d.label); })
    .y(function (d) { return d.value; });

var dataset;  //set global variable

//insert variables 

//loading data

d3.csv("mdma_cast.csv", function(d) {  //d3.csv can take a callback function
  return {
    year: d.year,
    pure: +d.pure, //convert to numeric
    more: +d.more,  //covert to numeric
    less: +d.less, //convert to numeric
    none: +d.none, //convert to numeric
    unknown: +d.unknown  //convert to numeric;  date //new Date(+d.year, 0, 1)
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

  stack(seriesArr);  //yo describe this shit
  console.log("stacked seriesArr", seriesArr);

  y.domain([0, d3.max(seriesArr, function(c) {  ///look through each series, each values, and establish min and max
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

  /*var points = svg.selectAll(".seriesPoints")
    .data(seriesArr)
    .enter().append("g")
    .attr("class", "seriesPoints");
        
  points.selectAll(".point")
    .data(function (d) { return d.values; })
    .enter().append("circle")
    .attr("class", "point")
    .attr("cx", function (d) { return x(d.label) + x.rangeBand() / 2; })
    .attr("cy", function (d) { return y(d.y0 + d.y); })
    .attr("r", "10px")
    .style("fill",function (d) { return color(d.name); })
    .on("mouseover", function (d) { showPopover.call(this, d); })
    .on("mouseout",  function (d) { removePopovers(); })*/
  
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

  /*function removePopovers () {
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
        return "Quarter: " + d.label + 
               "<br/>Rounds: " + d3.format(",")(d.value ? d.value: d.y1 - d.y0); }
    });
    $(this).popover('show')
  }*/

});













