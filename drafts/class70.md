+++
title = "Week 7"
description = ""
weight = 7
draft = true
+++

## Visualization

### Class Objective:

The goal of this class is to introduce principles of visualization and to show examples from a variety of different tools and packages useful for developing visualizations.

### Assignment (To be done before class):
- [Install Tableau](https://www.tableau.com/tft/activation) I have posted the key to Slack.
- [Tableau - Data analytics for university students guide](https://www.tableau.com/university-students)
- [Designing Great Visualizations](http://www.tableau.com/sites/default/files/media/designing-great-visualizations.pdf)
- [Tableau getting Started](http://www.tableau.com/learn/tutorials/on-demand/getting-started)
- [Ted Talk](https://www.ted.com/talks/david_mccandless_the_beauty_of_data_visualization#t-304102)

### In Class Activities:

#### Classic Examples
- [Nightingale's 'Coxcombs'](http://understandinguncertainty.org/coxcombs)
- [Napolean's March](https://commons.wikimedia.org/wiki/File%3AMinard.png)

#### Explaining Complex Data
- [Social Media in one](http://mashable.com/2017/07/11/conversation-prism-brian-solis-update-2017/#FMeXfLhzlqOI)
- [Live Wind Map](http://hint.fm/wind/)
- [538](http://projects.fivethirtyeight.com/2016-election-forecast/?ex_cid=rrpromo)
- [Trump vs Clinton 1](http://www.realclearpolitics.com/epolls/2016/president/us/general_election_trump_vs_clinton-5491.html)
- [Sentiment](https://www.kaggle.com/donyoe/d/mrisdal/2016-us-presidential-debates/vp-debate-sentiments-and-difference-btwn-debates)

#### Making a Point/Points
- [Military Spending](http://www.theguardian.com/news/datablog/2010/apr/01/information-is-beautiful-military-spending)
- [Mountains Out of Molehills](http://www.informationisbeautiful.net/visualizations/mountains-out-of-molehills/)
- [Billion Dollar O'Gram](http://www.informationisbeautiful.net/visualizations/billion-dollar-o-gram-2013/)

#### Uncovering Patterns
- [The Dude Map](http://qz.com/316906/the-dude-map-how-american-men-refer-to-their-bros/)<br>
- [Peak Breakup Times](http://www.informationisbeautiful.net/2010/peak-break-up-times-on-facebook/)
- [Tags and the City](https://www.tagsandthecity.net/san-francisco-bay-area/)

#### Interactive Examples
- [Snake Oil Supplements](http://www.informationisbeautiful.net/visualizations/snake-oil-supplements/)
- [Media](http://www.informationisbeautiful.net/visualizations/mountains-out-of-molehills/)
- [Campaign Staff Connections](http://www.nytimes.com/interactive/2015/05/17/us/elections/2016-presidential-campaigns-staff-connections-clinton-bush-cruz-paul-rubio-walker.html)
- [GapMinder Classic](http://www.gapminder.org/tools/#_chart-type=bubbles)
- [Toys in the World](http://www.gapminder.org/dollar-street/matrix?thing=Toys&countries=World&regions=World&zoom=4&row=1&lowIncome=26&highIncome=15000&lang=en)

#### Tool List
#### Publication Optimized
- [MatPlotLib](http://matplotlib.org)
- [ggPLOT2](http://docs.ggplot2.org/current/)

#### Web Optimimized
- [D3 Gallery](https://github.com/d3/d3/wiki/Gallery)
- [Seaborn Kaggle](https://www.kaggle.com/omarelgabry/titanic/a-journey-through-titanic)

#### Business Applications/Dashboards
- [Microsoft PowerBI](https://powerbi.microsoft.com/en-us/)
- [Tableau](http://www.tableau.com/stories/workbook/understand-your-business-glance)
- [Plot.ly](https://plot.ly)
- [Google Data Studio Beta](https://datastudio.google.com/u/0/navigation/reporting)
- [Sisense](https://www.sisense.com)


### Assignment
Homework 6 (Due 11-9)
This assignment should be turned into the LMS as a PDF.

#### Getting Started with Tableau Desktop.
For this lab we will begin the process of learning visualization through the [See Click Fix Kaggle Project](https://www.kaggle.com/c/see-click-predict-fix).  Go ahead and download the train file from [Github](https://raw.githubusercontent.com/theusual/kaggle-seeclickfix-ensemble/master/Bryan/Data/train.csv) or from the [Dropbox/Kaggle folder](https://www.dropbox.com/sh/1jrwf7ojow5js9t/AABaFESbOX81yotc3AuBNa0Za?dl=0).

The first part of any data visualization project is data understanding. Start with the process of understanding the data fields and the context of the data.

(1). IN YOUR OWN WORDS, describe what the data involves and key fields that are identified.

*Import the Data.*  You should be able to do this using the instructions from class and the video.
We want to get started with identifying the data on a map.  Drag the Longitude to the column and the Latitude to the rows.

*Filter the Data.*  We have 4 cities here but we only want one of them.  We need to create a filter that selects based on the longitude/latitude to only show one city.

(2). IN YOUR OWN WORDS, describe the filter you created to select only one city.

*Change the type to a Map.*  Select on the *Show Me* map to show your city on a map.  (This actually happens automatically).

*Tag Type.* Drag the tags over to the colors and select filter and add.  Select just a few tags.

*Understand Tags*.  Create a new worksheet and drag Tag Type from the dimensions and create a visualization that is sorted by the count of the number of tags.

(3). Provide an image showing the 5 most frequent tag types.

(4).  Create 4 visualizations that help you to understand more details about the data or make a specific point.  At least one should use the Map.  Provide 1-3 sentences to describe each visualization.

Here are some [examples](https://gist.github.com/jkuruzovich/a3b49f5004ad1e466ae5ddc97662d3e6).
