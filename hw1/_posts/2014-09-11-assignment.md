---
title: "Homework 1 assignment"
author: mm3940
output: html_document
published: false
tags: hw1
---

## Assignment 1: RMarkdown, R graphics, and Github

> Make some pictures of some dataset(s). Use either of the two datasets we have provided (questionnaire, and donations-vs-deaths), or acquire one of your own.

> - Write about your process and your results using RMarkdown and submit both the Rmd and compiled html as a pull request to the course repository.
> - Next week, you will each lead a code review with a group of your peers explaining your implementations. You will then have the opportunity to amend your branch in light of your peers feedback. Pull requests will be merged over the following week when you indicate that they are complete.

> This is a many-part assignment. It asks you to do some things that are familiar, to recite some unfamiliar incantations to git, and to follow some strict rules about naming and changes that are appropriate to include in a pull request. On the other hand, the actual work of the assignment  making pictures of data  is an open, creative exercise and is a chance to share something with your peers and to learn from them. 

## Detailed instructions

1. Create a branch on which to work: `git checkout -b hw1`
1. Select *file > new Rmarkdown* in RStudio and create a file in `qmssviz/hw1/_posts`.

![](new-rmd.png)

3. Add some stuff to the YAML Front Matter at the top of the document:
   - `published: false` (This prevents gh-pages from trying to re-render your document, and simply use the html one)
   - `tags: hw1` (for organization)
   - ![](yaml-matter.png)
4. Save the file. Follow the required naming convention: ISO8601 date and some other text. A good name is something like `2014-09-18-HW1-Michael-Malecki.Rmd`. (Uni is fine too. You just can't all give it the same non-unique name `hw1`.)
1. Select that file for staging using the Git pane of RStudio.
  ![](staging.png)
1. Commit your changes. A message like initial commit is fine.
  ![](commit.png)
1. Push your branch so that the simple buttons for push/pull work. For this you have to use *More > Shell* and then type `git push -u origin hw1` so that your current branch goes live to your fork and the two (local and server) know about each other.
1. Now, explore some data and write about it!
1. Save and commit frequently. You might choose just to commit changes to the Rmd, and then only include the html at the end. Then you can see (and share, and store) the entire history of the process. 
1. Before class (or within the first moments of class) next week, open a pull request for your branch targeting the class repo.
  ![](opened-request.png)

If in the first draft of the assignment you cant debug your issues with git or Rmd, you will have time in class to show your broken branch to your peers, who might be able to help, and to try again. Share your frustrations and get them resolved.
