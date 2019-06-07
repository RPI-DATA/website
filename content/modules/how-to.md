+++
title = "How to Make Notebooks"
description = ""
weight = 1
alwaysopen = true
+++

### Starting Up Jupyter Notebook
---

To use the Jupyter notebook, you have to run the following command (in either _Terminal_ for Mac or _Command Prompt_ for Windows) to see the application in your web broswer:

```
jupyter notebook
```

You can also launch it through the Anaconda Navigator startup page.

Once open you will be greeted with the **dashboard**:

<img src="/images/Jupyter.png" alt="Jupyter Notebook">

* The "Files" tab is where all of your files are kept,
* The "Running" tab keeps track of all the processes and notebooks currently live, and
* The "Clusters" tab is provided by IPython Parallel, Python's parallel computing framework. 

### Creating a New Notebook
---

To open a new notebook, you can click on the "New" in the "Files" tab and choose the kernel you would like to use.

The main user interface for the notebook looks like this:
<img src="..." alt="Notebook UI">

Note how the Markdown cell is within a blue frame. This means that the cell is in **command** mode, which lets you modify the notebook as a whole. If you double-click on the cell or hit `Enter` you will enter **edit** mode, which lets you edit the contents of the cell itself. Note that in command mode, the keyboard changes so letter keys correspond to shortcuts. In this case, however, you can add or format text in the Markdown to give better explanation for the code.

Common formatting syntax include:

* Bookending text with `*` will make it * *italic* *
* Bookending text with `**` will make it ** **bold** **
* Adding `#` in front of a line will make it a header (`##` will make a secondary header, `###` will make a tertiary header, etc.
* To apply LaTeX in your markdown, you can bookend your equation with _$_ (`$...$`) like `$c =\pi$`

You can find more markdown code in this [markdown cheatsheet.](https://guides.github.com/features/mastering-markdown)

Additionally, for code cells you can use the following shortcuts:

* Add a new cell by looking under the the "Insert" tab or pressing `B` when in command mode
* Delete a new cell by using the "Edit" tab or by pressing `D, D` when in command mode
* Hit `shift + tab` after typing out a function to get a description of how it works
* After finishing a cell, hit `shift + enter` to run it

When running code, the number next to the cell signifies the order in which the code has been run. Thus, you can have situations where you can run a cell near the beginning of your notebook that will overwrite a variable you declared in a later cell. 

Once you're done with your notebook, you can export it to html to contribute it to the project using the following command:

```
jupyter nbconvert --to html --template basic [your notebook's title].ipynb
```
