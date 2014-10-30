	window.onload = function(){
		var hello = 'Hello world!'
	
		var plotArea = d3.select('#plot-area')
		var mainParagraph = plotArea.append('p')
			.on('mouseover', applyHoverStyle)
			.on('mouseout', removeHoverStyle)
			.text(hello)
		var secondParagraph = plotArea.append('p')
			.on('mouseover', applyHoverStyle)
			.on('mouseout', removeHoverStyle)
			.text("")
			.classed({hovered: true})
		var thirdParagraph = plotArea.append('p')	
			.text("another text")
		
	
	
		function applyHoverStyle(){
			d3.select(this).classed({hovered: true})
		}
		function removeHoverStyle(){
			d3.select(this).classed({hovered : false})
		}
		
	}
