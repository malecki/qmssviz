var data;

window.onload = function(){
	d3.json('germs.json', function(error, json){
		data = json
		draw(json)
	})
}
function draw(data){
	console.log(data)
	var svg = d3.select('#plot-area')
		.append('svg')
	svg.selectAll('.point')
		.data(data)
		.enter()
		.append('circle')
		.classed('point', true)
		.attr('cr', 2)
}