# Data@Rensselaer Website
<img src="static/images/data-rpi_logo.jpg" alt="Data@Rensselaer" style="width:50%;height:50%;">

URL: https://rpi-data.analyticsdojo.com/

 * Insert description here
# Update Protocol

This website is powered by the [Hugo](https://gohugo.io/documentation/) framework, which generates static websites with markdown and html. Please read the documentation before contributing.

## Adding Notebooks

Once you complete a notebook to be contributed, you can generate a simple html with the following command line argument

```
jupyter nbconvert --to html --template basic your_notebook.ipynb
```

In the content/modules folder of your local website repository, create a new markdown file with the following header

```
---
title: "Your title"
weight: INTVALUE
---
```

The weight corresponds with what order the notebooks appear on the menu.

Below the header, copy and paste the html code you generated. Please have a live Colab links on your notebooks.

## Commiting Changes

Before pushing your changes, run the command `HUGO` in your repository to generate static html pages. Then you can run standard add, commit and push commands for your changes. For your convinience, the push.sh script can be run to all of these commands at once. You can also attach a commit message in quotes.

Please leave detailed messages of your changes whenever possible.
