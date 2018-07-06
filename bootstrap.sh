#!/usr/bin/env bash

apt-get update
apt-get install -y figlet toilet

toilet -f standard -k  Installing Apache
apt-get install -y apache2

toilet -f standard -k  Installing Build Tools
apt-get -y install build-essential gfortran gcc-multilib g++-multilib libffi-dev libffi6 libffi6-dbg python-crypto python-mox3 python-pil python-ply libssl-dev zlib1g-dev libbz2-dev libexpat1-dev libbluetooth-dev libgdbm-dev dpkg-dev quilt autotools-dev libreadline-dev libtinfo-dev libncursesw5-dev tk-dev blt-dev libssl-dev zlib1g-dev libbz2-dev libexpat1-dev libbluetooth-dev libsqlite3-dev libgpm2 mime-support netbase net-tools bzip2 p7zip unrar-free npm 

toilet -f standard -k  Installing R and R Studio
apt-get install -y r-base r-base-dev
apt-get install -y gdebi-core
pushd /tmp
wget https://download2.rstudio.org/rstudio-server-1.1.453-amd64.deb
yes|gdebi rstudio-server-1.1.453-amd64.deb
popd

toilet -f standard -k  Installing Java
apt-get install -y openjdk-11-doc openjdk-11-jdk openjdk-11-jdk-headless openjdk-11-jre openjdk-11-jre-headless

toilet -f standard -k  Installing Python
apt-get install -y python3-pip python3-all python3-all-dev python-all python-all-dev python-pip ipython ipython-notebook

toilet -f standard -k  Installing Octave
apt-get install -y octave

toilet -f standard -k  Adding Packages to Python3
pip3 install --upgrade pip
pip3 install awscli bigmler csvkit numpy scipy nose skll matplotlib pandas numexpr tables openpyxl xlsxwriter xlrd feedparser beautifulsoup4 plotly statsmodels dataset pymongo nltk networkx deap pydot2 rpy2 jug nose pandas matplotlib seaborn

toilet -f standard -k  Installing Jupyter
apt-get install -y jupyter-core jupyter-notebook
pip3 install jupyter-core jupyter-notebook

toilet -f standard -k  Installing Kaggle
pip3 install kaggle

toilet -f standard -k  Installing Miscellaneous Tools
npm install -g cowsay xml2json-command 

toilet -f standard -k  Finished

echo
echo
echo

toilet -f standard -k HOWTO do various tasks:

echo
echo
echo

echo vagrant ssh   '<---' type this on a terminal in your host to log in to the guest
echo
echo
tail -n +1 /vagrant/howtos/*

echo
echo
echo Scroll up a little for some howtos

