// Code goes here

// Prologue
var canvas1 = d3.select("#prologue")
             .append("svg")
             .attr("width",800)
             .attr("height",300);
             
var c1 = canvas1.append("circle")
        .attr("cx",50)
        .attr("cy",50)
        .attr("r",50)
        .attr("fill","rgba(255,255,0,0.2)");
             
var c2 = canvas1.append("circle")
        .attr("cx",200)
        .attr("cy",50)
        .attr("r",50)
        .attr("fill","rgba(255,0,0,0.2)");
        
var c3 = canvas1.append("circle")
        .attr("cx",350)
        .attr("cy",50)
        .attr("r",50)
        .attr("fill","rgba(135,206,250,0.2)");

var c4 = canvas1.append("circle")
        .attr("cx",500)
        .attr("cy",50)
        .attr("r",50)
        .attr("fill","rgba(173,255,47,0.2)");

c1.transition()
.duration(1500)
.attr("cx",400)
.attr("cy",200)
.attr("fill","rgba(255,255,0,0.9)")
.transition()
.duration(1000)
.delay(1600)
.attr("cx",60)
.attr("cy",50);

c2.transition()
.duration(1500)
.attr("cx",100)
.attr("cy",200)
.attr("fill","rgba(255,0,0,0.65)")
.transition()
.duration(1000)
.delay(2100)
.attr("cx",110)
.attr("cy",50);

c3.transition()
.duration(1500)
.attr("cx",300)
.attr("cy",200)
.attr("fill","rgba(135,206,250,0.8)")
.transition()
.duration(1000)
.delay(2600)
.attr("cx",160)
.attr("cy",50);

c4.transition()
.duration(1500)
.attr("cx",200)
.attr("cy",200)
.attr("fill","rgba(173,255,47,0.8)")
.transition()
.duration(1000)
.delay(3100)
.attr("cx",210)
.attr("cy",50);

var welcome = canvas1.append("text")
                     .text("Welcome to hw4")

var title = canvas1.append("text")
                     .text("New Delhi Electricity usage")

var author = canvas1.append("text")
                     .text("by sz2491")

welcome.transition()
       .duration(1000)
       .delay(4000)
       .each("start",function(){
         d3.select(this)
         .attr("fill","red")
          })
       .attr("fill","rgb(255,69,0)")
       .attr("font-size", "32px")
       .attr("x",15)
       .attr("y",170);
       
title.transition()
       .duration(1000)
       .delay(4000)
       .each("start",function(){
         d3.select(this)
         .attr("fill","orange")
          })
       .attr("fill","rgb(255,99,71)")
       .attr("font-size", "32px")
       .attr("x",15)
       .attr("y",210);

author.transition()
       .duration(1500)
       .delay(4500)
       .each("start",function(){
         d3.select(this)
         .attr("fill","orange")
          })
       .attr("fill","rgb(255,140,0)")
       .attr("font-size", "22px")
       .attr("x",350)
       .attr("y",255);

// Prologue ends

// div is left blank, welcome should appear at this moment

// Delhi data comes
d3.csv("delhi.csv", function(data){
  var canvas2 = d3.select("#div1")
              .append("svg")
              .attr("width",1100)
              .attr("height",360);
              
  var color1=d3.scale.linear()
                 .domain([0,600])
                 .range(["yellow","red"]);
              
  canvas2.selectAll("rect")
         .data(data)
         .enter()
           .append("rect")
           .attr("width",10)
           .attr("height",function(d) {
             return (d.BRPL-1000)/2;})
           .attr("y", function(d){return (1604.58- d.BRPL)/2 ;})
           .attr("x",function(d,i){return i*10;})
           .attr("fill", function(d){
             return color1(d.BRPL-1000);})
           .attr("class","rectset1")
     
  canvas2.selectAll("text")
         .data(data)
         .enter()
           .append("text")
           .attr("fill","white")
           .attr("x",function(d,i){ 
             if (i%5==3){
             return i*10 }
             else return -100;
           })
           .attr("y",function(d){return (1604.58- d.BRPL)/2+55 ;})
           .attr("font-size", "1px")
           .attr("text-anchor", "middle")
           .text(function(d){return d.BRPL})
  
  var xscale1=d3.scale.linear()
              .domain([0, 24])
              .range([0, 960])
  
  var xaxis1=d3.svg.axis()
               .scale(xscale1)
               .ticks(24)
               .orient("bottom");
               
  var yscale1=d3.scale.linear()
              .domain([1604.58,1000])
              .range([0,302.29])
  
  var yaxis1=d3.svg.axis()
               .scale(yscale1)
               .orient("right");
  
  canvas2.append("g")
         .attr("transform","translate(0,310)")
         .attr("fill","rgb(255,69,0)")
         .attr("font-size","12px")
         .attr("class","xaxis1")
         .call(xaxis1);

  canvas2.append("g")
         .attr("transform","translate(965,0)")
         .attr("fill","rgb(255,69,0)")
         .attr("font-size","12px")
         .attr("class","xaxis1")
         .call(yaxis1);
           
})







