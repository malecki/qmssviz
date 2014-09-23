---
layout: post
title: Projects — What are they?
description: Projects
tags: project
---

## Scope

The "project" is intended to be an undertaking in your area of interest that is worthy of the investment of a semester's worth of time by up to three people. Students with thesis-related projects may have some advantage in topic selection, but not necessarily. 

You are **very strongly encouraged** to choose collaborators of **mixed skill levels**. More senior members of a team will hone their ability to communicate the substance and technical implementation of their own work. More junior members of a team will gain familiarity with a wide range of data and data-visualization problems that they never knew they had.

## Streams

1. Development on an open source project (features and/or bugs).
2. Development of your own work, such as theis projects, where data and model visualization components get the development help of a team, for critique, suggestion, bugfix, sharing of exactly the kind of basic code snippets / tricks that form the invaluable accumulation of graduate work.
3. Really 2.5; is a variant of (2) using data that will be made available from a partner with lots of data and some visualization targets specified.

(1) is a service to the world and landing a pull request on an open source project is arguably the best way to become known among would-be peers in the field. Work on (2), essentially pairing on thesis projects, gives the benefit of project management (scope definition, sprint organization, self assessment), as well as specialization — never underestimate the benefit of “another pair of eyes” on a problem you are working on. The data partner for (3) offers high visibility for the result of your combined effort.

Some suggestions of varying scope:

  * todo lists/wikis/issues of open source projects in data visualization
  * [ggvis](https://github.com/rstudio/ggvis/issues)
  * [ggplot2](https://github.com/hadley/ggplot2/wiki)
  * [python ggplot](https://github.com/yhat/ggplot/blob/master/TODO.md)
  * [crossfilter](https://github.com/square/crossfilter/issues)
  * write a tool for exploratory/graphical methods where they are lacking. (e.g. [coefplot](http://cran.r-project.org/web/packages/coefplot/index.html) )
)
  * replication of published research for more visualization (e.g. [tables](http://www9.georgetown.edu/grad/gppi/hpi/cew/pdfs/whatsitworth-complete.pdf) to [graphs](http://www.npr.org/blogs/money/2013/09/10/219372252/the-most-and-least-lucrative-college-majors-in-1-graph)); [diet study](http://www.nejm.org/doi/full/10.1056/NEJMoa1200303); [college instructor studies](http://www.nytimes.com/2014/02/06/opinion/a-solution-for-bad-teaching.html);
  * improve or add insights to data presentations such as [environmental performance index](http://epi.yale.edu/).
  * modeling and presenting data for your other work (making more and better statistical graphics than you would otherwise).

## Assessment

You are expected to write down achievable-but-difficult (or difficult-but-achievable) goals, and objectives with observable results. 

### Iteration Plans

Work should be broken up into two-week sprints with specific objectives. At the end of each sprint, you will evaluate your own progress, and schedule items/objectives for the next two weeks. 

Ideally, you'll complete more than you thought you would in each sprint. By the third iteration plan add items/objectives that you would have been wary of at the outset. See an example of a first sprint plan below…

### Sprint 1: Identify objectives for overall project:

#### Stream 1: 

1. Fork the project and make a branch or branches for each feature or bug you will target.
2. make notes about your plan for attacking the features/bugs.
3. Identify strengths of group members (writing doc, coming up with examples / demonstrations of feature, tests for bug)

#### Stream 2: 

1. Identify data sources you would like to use and brainstorm (sketch/scan?) graphs you each would ideally like to make.
2. Identify strengths of group members — who is better at munging data, making graphs, making fine detail adjustments? 
3. Decide target: will it be static or interactive? Shiny (sortof interactive R) or standalone D3? A couple of you might have a full-stack option, serving on heroku or similar (talk to me about this).
4. Set up your own common repo to work on (not the class one), and add each other as collaborators.

#### Stream 3:

1. Identify datasets / target graphs of interest
2. Identify strengths — data manipulation, graphs, brainstorm / sketch ideas like we did in class 1. Divide work!