# Computer Setup

Often technical issues around computer configuration can be frustrating, but they are an important component of doing data science. You will need a number of different systems setup on your computer for this class.

We will be testing this semester a online JupyterHub instance, but the idea is to have this primarily for in-class exercises.

Please feel free to post issues on the Slack channel.


### Step 1: Install Github Desktop (or if git user can skip to next)
Install Github desktop if using OSX or Windows.

[Click here for download instructions for Github Desktop](https://desktop.github.com/).

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
(a.) Clone the [class repository](https://github.com/jkuruzovich/techfundamentals-spring2018-materials) either from the desktop tool or from the command line.

From the command line:
```
$ git clone https://github.com/jkuruzovich/techfundamentals-spring2018-materials
```
(b.) From the command line change directories to the `techfundamentals-spring2018-materials` folder.

```
$ cd techfundamentals-spring2018-materials
```

Or from the Github Application right click on the repository name and click `Open in Terminal.`

(c.) Install the new Conda environment using the following command:

```
$ conda env create -f environment.yml
```

(d.) Activate the environment using the following command:

```
$ source activate ad
```

(e.) Launch a Jupyter notebook with the command:
```
$ jupyter notebook
```
