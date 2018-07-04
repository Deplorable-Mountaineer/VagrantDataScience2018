# Vagrant Data Science 2018

Files to set up Vagrant/Virtual box instance of Ubuntu/Bionic64 18.04 for Data Science

## Quick Start

1. Download the free [VirtualBox](https://www.virtualbox.org/) virtual machine player.

2. [download and install the appropriate Vagrant package for your OS](https://www.vagrantup.com/downloads.html).

3.  Clone or unzip this repository somewhere.  In this example, I assume you are on Windows and have put the files (including the Vagrantfile) in:

    D:\VagrantDataScience2018


4. Open a command-line (recommended: Terminal on Mac, PowerShell or Git Bash on Windows, your favorite terminal on Linux)

5. cd into this project's root folder; In this example, if using Git Bash, you would type:

    cd \d\VagrantDataScience2018

6. Check everything is gonna be alright so far by listing the directory.  In Git Bash, that would be:

    ls -AF

and you should see something like:

    $ ls -AF
    .git/ bootstrap.sh*  howtos/  LICENSE  README.md  Vagrantfile

It is important that bootstrap.sh and Vagrantfile be there, as well as the howtos directory (or at least the README.md)

7. Run 

    vagrant up
    
in the terminal.  This will take some time, a lot gets installed.

8. If all goes well, you will see the howtos scroll by, and you can go to the machine by typing:

    vagrant ssh

## Setting Up a Few Things

In your guest OS that you just ssh'd into using "vagrant ssh", you can find the howtos in the directory:

    /vagrant/howtos

These give you quick instructions for setting up the Kaggle app and accessing the guest OS's web, RStudio, and Jupyter notebook in your Host OS's web browser.

The howtos are reproduced here for convenience:

## Kaggle HOWTO

### Set up an account on kaggle.com, and in your profile, generate API key.

### In Guest:

### Place the key in  ~/.kaggle/kaggle.json

    chmod 600 ~/.kaggle/kaggle.json

    kaggle -h

## Jupyter Notebook HOWTO

### In guest:

    jupyter notebook --generate-config

    jupyter notebook password
### choose a password, can't be blank

    jupyter notebook --ip 0.0.0.0
### open browser on host, browse to localhost:8888, type 
###   in the password you set if asked

## RStudio HOWTO


### open browser on host, browse to localhost:8787
### username: vagrant
### password: vagrant


## Web HOWTO

### in guest, html files in /var/www/html

### open browser on host, browse to localhost:8080


## What's Included

* Tools: figlet and toilet: for printing banners to the terminal
* web server: apache2

* Build Tools: build-essential gfortran gcc-multilib g++-multilib libffi-dev libffi6 libffi6-dbg python-crypto python-mox3 python-pil python-ply libssl-dev zlib1g-dev libbz2-dev libexpat1-dev libbluetooth-dev libgdbm-dev dpkg-dev quilt autotools-dev libreadline-dev libtinfo-dev libncursesw5-dev tk-dev blt-dev libssl-dev zlib1g-dev libbz2-dev libexpat1-dev libbluetooth-dev libsqlite3-dev libgpm2 mime-support netbase net-tools bzip2 p7zip unrar-free npm 

* R and R Studio: r-base r-base-dev gdebi-core rstudio-server-1.1.453-amd64.deb: a statistics and data science scripting language

* Java: openjdk-11-doc openjdk-11-jdk openjdk-11-jdk-headless openjdk-11-jre openjdk-11-jre-headless

* Python: python3-pip python3-all python3-all-dev python-all python-all-dev python-pip ipython ipython-notebook

* Octave: a free Matlab replacement

* Python packages: awscli bigmler csvkit numpy scipy nose skll matplotlib pandas numexpr tables openpyxl xlsxwriter xlrd feedparser beautifulsoup4 plotly statsmodels dataset pymongo nltk networkx deap pydot2 rpy2 jug nose

* Jupyter: jupyter-core jupyter-notebook: Python web-based data-science notebook

* Kaggle: for interacting with kaggle.com data science page

* cowsay: for the heck of it

* xml2json-command: for data wrangling


## [Deplorable Mountaineer](https://www.deplorablemountaineer.com)
