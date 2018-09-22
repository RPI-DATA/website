+++
title = "Anaconda"
description = ""
weight = 10
+++

### Step 2: Install and Configure Anaconda
We will be using Anaconda to provide a Jupyter environment for both R and Python.

Follow the following instructions to install Anaconda from [Continuum Analytics](https://www.continuum.io/).
[OSX](#osx)
[Windows](#windows)
[Linux](#linux)

Once you have the Anaconda Distribution, follow below for [advanced configuration](#advanced-configuration).

### OSX
1. Follow the online instructions to [install the Anaconda Distribution with Python 3.6](https://docs.continuum.io/anaconda/install/mac-os)
2. Follow below for [advanced configuration](#advanced-configuration).

### Windows
Windows may often have issues associated with installation if you have had previous versions of Anaconda installed.  If it doesn't work, start by uninstalling everything

1. Follow the online instructions to [install the Anaconda Distribution with Python 3.6](https://docs.continuum.io/anaconda/install/windows)
2. Follow below for [advanced configuration](#advanced-configuration).

### Linux
If you are a Linux user, please help in supporting the class. You likely won't need my help. ;)
1. Follow the online instructions to [install the Anaconda Distribution with Python 3.6](https://docs.continuum.io/anaconda/install/linux)
2. Follow below for [advanced configuration](#advanced-configuration).


### Advanced Configuration

(a.) Windows users, open an 'Anaconda Prompt'.  Mac/Linux users open a standard terminal.

(b.) Change directories to the `techfundamentals-spring2018-materials` folder you cloned earlier.

```
cd <insert full path >\techfundamentals-spring2018-materials
```
For the above, changing directories differs for Windows or Mac users. For example, on a Mac it might be:
```
cd /Users/jasonkuruzovich/githubdesktop/techfundamentals-spring2018-materials
```
On Windows, if you have a space somewhere in your path make sure that you include quotes:

```
cd "c:\Users\jasonkuruzovich\github\techfundamentals-spring2018-materials"
```
(c.) Install required packages.
First install pip, which is a package manager similar to conda.
```
conda install -c anaconda pip
```

Then, from the repository install all the packages in requirements.txt.
```
pip install -r requirements.txt
```



(d.) Launch a Jupyter notebook with the command:
```
jupyter notebook
```
You will need to run c-d each time to launch Jupyter.

*There may be some other packages you still have to install.  You will know this is an issue if an `import` command fails.  You can install packages with:
```
conda install <packagename>
```

or

```
pip install <packagename>
```

For example, to install the R Kernal for Jupyter, install the r-essentials package:
```
conda install r-essentials
```
