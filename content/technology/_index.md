+++
title = "Technology"
description = ""
weight = 2
alwaysopen = true
+++

Often technical issues around computer configuration can be frustrating, but they are an important component of doing data science. You will need a number of different systems setup on your computer for this class.

We will be testing this semester a online JupyterHub instance that should simplify a lot of the setup. However this is still in an alpha release and it would be good to get an alternate compute environment setup on your laptop.

In describing options, there are *cloud* and *laptop* based ways of doing the exercises.

## Cloud
A cloud based way of doing data science doesn't require you to install anything and you can be up and running in working with concepts asap.

### Our Cloud: lab.analyticsdojo.com
For the cloud instance at [lab.analyticsdojo.com](http://lab.analyticsdojo.com), there is some cool technology that is driving this. We are utilizing [Kubernetes](https://kubernetes.io) on the Google Cloud Platform to run Jupyterhub.  This is based on some amazing work by a talented community of open source developers.

When someone logs into the platform, the students obtain their own *container* to run on, giving them access to a compute environment that is much more flexible than a typical brower.

##Laptop
When running on your laptop, there are 2 different configuration options that that are possible.

For most users, managing the analytics environment with Anaconda seems to work quite well. Anaconda is a package manager with detailed instructions for Mac/Windows/Linux users.  In this clase

It is also possible to run Docker on your laptop, mirroring the same compute environment that you enjoyed on JupyterHub cloud environment. This has worked perfectly in the past for Mac users and not so well for Windows users, but I understand Docker for Windows has come a long way.





Please feel free to post issues on the Slack channel.

Follow the instructions to install [git/GitHub Desktop](/setup/git/) and [Anaconda](/setup/anaconda).
