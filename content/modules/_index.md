+++
title = "Notebooks"
description = ""
weight = 1
alwaysopen = true
+++


### Overview 

---

A "Jupyter notebook" denotes a document that contain both code and rich text elements such as figures, links, and equations. Because of the mix of code and text elements, this type of document is the ideal place to bring together results and didactic descriptions, which can be used to perform analysis in real time. Initially, Jupyter supported Julia, Python, and R, hence the loose acronym "Ju-Pyt-R". Nowadays, the notebook technology also supports many other languages, [a list of which can be found here.](https://github.com/jupyter/jupyter/wiki/Jupyter-kernels)

As a server-client application, Jupyter Notebook App allows you to edit and run your notebooks via a web browser. The application can be executed on a PC without Internet access, or it can be installed on a remote server, where you can access it through the Internet.
Its two main components are the kernels and a dashboard. While the kernel runs and instropsect the user's code, the dashboard show you the markdown documents.

<img src="/images/K_D.png" alt="Kernel and Dashboard">

### Functionality 

---
To use the Jupyter notebook, you have to run the following command:
> Jupyter notebook

Then you will see the application opening in a web broswer.

<img src="/images/Jupyter.png" alt="Jupyter Notebook">

* The "Files" tab is where all your files are kept,
* The "Running" tab keeps track of all your processes, and
* The "Clusters" tab is provided by IPython parallel, Python's parallel computing framework. 

To open a new notebook, you can click on the "New button" in the "Files tab" and choose the option you want.

After getiing in the notebook. 
* you can add `crtl + b` or delete new cell (either markdown or the language you choose).
* Using the `shift + tab` after the code, you can see the function of it.
* After finishing one cell, using `shift + enter` to run it
* To apply a latex in you markdown, you can add your latex between `$$` like `$$c =\pi $$`
You can use the botton at the top for some of those command, as well.

<img src="/images/button.png" alt="Button">

You can find more markdown code by this [markdown cheatsheet](https://github.com/jupyter/jupyter/wiki/Jupyter-kernels) 


### Example

---
<ol>
	<li>
 By using the Jupyter Notebook, you can combine your markdown explanation with a function doing all the real math for you.
<img src="/images/PCA.png" alt="PCA">

One advantage of it is that you can go through different examples just by changing the variable in the function. Students can also use those function as a self-check tools or a caculator, while they solve the problem.
</li>
<li>
 Also, Jupyter Notebook can provide you a new way of making plots with the programming language you like.

<img src="/images/linear.png" alt="Linear">
In this example, we're trying to apply a list of dataset into the linear regression. As you can see, you can plot the whole data and label everything you want just by coding few sentences. In fact, in this notebook you can make all the plots you want like heatmap, dotplot, and etc. Also, for all the instructors, you don't need to switch between your powerpoint and matlab any more.
Tips: If you use python for you notebooks, matplotlib is a very useful class contain all those plots. [Here is the link](https://matplotlib.org/tutorials/index.html)
</li>
<li>
 What's more, you can make an assignment notebook by Jupyter Notebook.

<img src="/images/assignment.png" alt="Assignment">
By using this assignment, students can test their own skills of making heatmap. In fact, Instructors can use the jupyter notebook to make assignments among all the topics. Also, our upcoming grading system can give you a convinent experience while grading; students can immediately get the feedback once the instructor finished grading. A dataset including all student's grades will be made as well such that you don't need to collect all those data by yourself any more.
</li>
</ol?>
