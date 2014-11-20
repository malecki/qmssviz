// to do: use translate to replace fiddling around with margins

d3.csv("rad.csv", function(data) {
	// var count = [20, 24, 38, 110, 115, 26, 17, 24, 132];
	// var rad = [1, 2, 3, 4, 5, 6, 7, 8, 24];

	console.log(data[0])

	for(i = 0; i < data.length; i++) {
		data[i].count = parseInt(data[i].count)
		data[i].rad = parseInt(data[i].rad)
	}

	var plot = d3.select(".plot"),
	    plotHeight = 450,
	    plotWidth = 400,
	    margin = {"left": 20, "right": 5, "bottom": 40, "top": 50},
	    dropHeight = plotHeight - margin.bottom
	    
	var barSpace = 5,
	    barWidth = (plotWidth - margin.left - margin.right) / data.length
	    
	var x = d3.scale.linear()
	    .domain([0, data.length])
	    .range([margin.left, plotWidth - barSpace/2 - margin.right])
	    
	var y = d3.scale.linear()
	    .domain([0, d3.max(data)])
	    .range([0, plotHeight - margin.top - margin.bottom])
	    
	plot.selectAll("rect")
	  .data(data).enter().append("svg:rect")
	    .attr("x", function(d, i) { return x(i) + barSpace/2; })
	    .attr("y", function(d) { return dropHeight - y(d); })
	    .attr("height", function(d) { return y(d.count); })
	    .attr("width", barWidth - barSpace/2)
	    
	plot.selectAll("text")
	  .data(data).enter().append("text")
	    .attr("x", function(d, i) { return x(i) + barWidth/2; })
	    .attr("y", function(d) { return dropHeight - y(d); })
	    .text(function(d) { return d.RADlevel; })
	    .attr("class", "plot-labels")
	    
	var title = plot.append("text")
	    .attr("x", plotWidth / 2)
	    .attr("y", margin.top / 2)
	    .attr("text-anchor", "middle")
	    .attr("class", "title main-title")

	title.append("tspan")
	    .attr("x", plotWidth / 2)
	    .text("Index of Access to Radial Highways")
	  .append("tspan")
	    .attr("x", plotWidth / 2)
	    .attr("dy", "1.4em")
	    .text("in Boston suburbs")
	    
	plot.append("text")
	    .attr("x", plotWidth / 2)
	    .attr("y", dropHeight + margin.bottom / 1.25)
	    .attr("text-anchor", "middle")
	    .text("Level of index")
	    .attr("class", "title axis-title x-axis-title")
	    
	plot.selectAll("text.x-axis-labels")
	  .data(data).enter().append("svg:text")
	    .attr("x", function(d, i) { return x(i); })
	    .attr("y", dropHeight)
	    .attr("text-anchor", "middle")
	    .attr("dx", barWidth/2)
	    .attr("dy", 15)
	    .text(function(d) { return d.rad; })
	    .attr("class", "axis-labels x-axis-labels")
	    
	plot.append("text")
	    .attr("x", margin.left / 1.25)
	    .attr("y", dropHeight / 2)
	    .attr("text-anchor", "middle")
	    .attr("transform", "rotate(270 " + margin.left / 1.25 + " " + dropHeight / 2 + ")")
	    .text("Number of suburbs")
	    .attr("class", "axis-title y-axis-title")
	    
	// plot.selectAll("text.y-axis-labels")
	//   .data(d3.range(0, d3.max(data) + 1, 2)).enter().append("svg:text")
	//     .attr("x", margin.left - 3)
	//     .attr("y", function(d, i) { return dropHeight - y(d); })
	//     .attr("text-anchor", "end")
	//     .attr("dx", -5)
	//     .attr("dy", 0.3 + "em")
	//     .text(function(d, i) { return d;})
	//     .attr("class", "axis-labels y-axis-labels")
	    
	// plot.selectAll("ticks.y-axis").
	//   data(d3.range(0, d3.max(data) + 1)).enter().append("svg:line")
	//     .attr("x1", margin.left - 5)
	//     .attr("x2", margin.left)
	//     .attr("y1", function(d) { return dropHeight - y(d); })
	//     .attr("y2", function(d) { return dropHeight - y(d); })
	//     .attr("class", "axis-ticks y-axis-ticks")
	    
	// plot.selectAll("line.y-axis").
	//   data(data).enter().append("svg:line")
	//     .attr("x1", margin.left)
	//     .attr("x2", margin.left)
	//     .attr("y1", dropHeight)
	//     .attr("y2", margin.top)
	//     .attr("class", "axis-line y-axis-line")
})
