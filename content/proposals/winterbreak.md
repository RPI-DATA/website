+++
title = "Winter Break Projects"
description = ""
weight = 20
+++

It's great to have stories as an outcome of the program.  Why not work on something over the break that will create one? Here is a list of a few projects where you could get involved.

1. *Autograding with TravisCI*. As part of this class we incorporate tests as a way to see that the the student has completed the assignment. However, there is a risk that students could "fake the tests" and as a result not do the work.  There are some prototypes around for using TravisCI and as a testing mechanism. There is also an open source project called Submitty that has been developed locally. I'd like some help figuring out autograding.

2. *Kuberlytics*. Currently there are a number of students from the RPI Center for Open Source (RCOS) working on a project called Kuberlytics. We have started looking at different ways Kubernetes could be used in data science. Lots of opportunity and a new [Google project called kubeflow](https://github.com/google/kubeflow) has me really excited that Kubernetes.  I'm looking for help in documenting ways of launching things on Kubernetes, as we started [here in the launch project](https://github.com/Kuberlytics/launch).

Some specifics related to 2.

(a.) Solidify deployments for Jupyterhub using new version of helm chart (enabling ssl.), load testing of Jupyterhub server, shared storage.
(b.) Work on deployment of Airflow on Kubernetes. Airflow can be used to
(c.) Simplified python package for committing code.
(d.) Demonstration cases of installing and using pachyderm.

3. *Entrepreneurship and Big Unstructured Data.* I'm currently working as part of Kuberlytics and [CISL](http://cisl.rpi.edu) to assemble data related to startups for additional analysis.  Current data collections involve, Crunchbase, Twitter, & Kickstarter. However, additional efforts are needed to pull things together and start some interesting visualizations and modeling.

Some specific use cases from 3.

(a.) *How can we understand "pivots" in a companies strategy and in the introduction of new products and services?*  While the web is a way for companies to enact their strategies. By observing website changes over time, we can understand shifts in strategies. But how can we observe shifts in strategies over time? The [Internet Wayback machine](https://archive.org/web/) is an effort to capture websites at different periods of time. The first objective of this subproject is to develop capabilities to extract website data in a way that can be further analyzed. This python package might help [py-wayback](https://bitbucket.org/jgoettsch/py-wayback/src), but it is a bit dated. No existing work has been done in this area.

(b.) *Crunchbase API.*  Crunchbase has one of the premier sources of company data, providing an index of the startup community over time.  Currently, while much data is available through direct download, some additional data requires
Because of the licensing agreement, this repository is private and all people associated with the project have to sign a terms of service agreement. The goal is to build on the [crunch-time](https://github.com/CalvinLeGassick/crunch-time). In addition to data manipulation and management, there is a need to use [Gensim](https://radimrehurek.com/gensim/) topic modeling and cosine similarity as in [this paper](https://misq.org/toward-a-better-measure-of-business-proximity-topic-modeling-for-industry-intelligence.html)

(c.) *Kickstarter.*  While quiet a lot of work has been done one understanding Kickstarter, less work has examined how organizations utilize Kickstarter.  In particular, we suggest that Kickstarter can be an alternative to fund raising. We have started the process of collecting data and just need to link it to different datasets.
[See github.](https://github.com/jkuruzovich/crowd-funding)

Other datasets that could be relevant include patents, news, etc.

[Crunchbase 2013 Data](https://data.crunchbase.com/docs)

### Join the Kuberlytics slack (make sure you have a pic)

If working on startup data make sure you turn on notifications for the #startupdata channel. 
[Kuberlytics Slack](https://join.slack.com/t/kuberlytics/shared_invite/enQtMjgyOTA5NTMyMDA0LTM5MjQ5MjMyNzVkODg3NmNhMWQxNTU5NWJiNzVhZTE3YmFkMzNhZjdkNzcwMTQ0OWJiNzQ3ZWMwZmJkYjFmNDY)

(b.) *Crunchbase API.*  Crunchbase has one of the premier sources of company data, providing an index of the startup community over time.  Currently, while much data is available through direct download, some additional data requires
Because of the licensing agreement, this repository is private and all people associated with the project have to sign a terms of service agreement. The goal is to build on the [crunch-time](https://github.com/CalvinLeGassick/crunch-time). In addition to data manipulation and management, there is a need to use [Gensim](https://radimrehurek.com/gensim/) topic modeling and cosine similarity as in [this paper](https://misq.org/toward-a-better-measure-of-business-proximity-topic-modeling-for-industry-intelligence.html)

Steps.
1. Get familiar with what crunchbase is..view website.
2. Download [Crunchbase 2013 Data](https://data.crunchbase.com/docs)

Group A
3. Modeling group..request access to repository..... Install Gensim.  Load Company CSV. Load to Pandas.   Read about topic modeling and review MISQ paper.  Try topic modeling.  Figure out cosine similarity.

Group B
4. API group. Request Access to repository.  Fill out form and say you are working with me. Try accessing API using [crunch-time](https://github.com/CalvinLeGassick/crunch-time) (need api access) and figure out how to pull Founder and School data.
