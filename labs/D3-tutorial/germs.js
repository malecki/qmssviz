window.onload = function(){
	var hello = 'Hello world!'

	d3.select('#plot-area')
		.append('p')
		.on('mouseover', applyHoverStyle)
		.on('mouseout', removeHoverStyle)
		.text(hello)

	function applyHoverStyle(){
		d3.select(this).classed({hovered: true})
	}
	function removeHoverStyle(){
		d3.select(this).classed({hovered : false})
	}
}
