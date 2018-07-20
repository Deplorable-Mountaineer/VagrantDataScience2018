#!/usr/bin/env bash

########################################################################
# Update package cache and install some banner utilities
########################################################################

sudo apt-get update
sudo apt-get install -y figlet 
sudo apt-get install -y toilet

########################################################################
# Install Apache
########################################################################

toilet -f standard -k  Installing Apache
echo -e '\e[32m########################################################################\e[0m'
echo -e '\e[32m# apt-get install -y apache2\e[0m'
echo -e '\e[32m########################################################################\e[0m'
sudo apt-get install -y apache2


########################################################################
# Install Build Tools
########################################################################


toilet -f standard -k  Installing Build Tools
for x in build-essential gfortran gcc-multilib g++-multilib libffi-dev libffi6 libffi6-dbg python-crypto python-mox3 python-pil python-ply libssl-dev zlib1g-dev libbz2-dev libexpat1-dev libbluetooth-dev libgdbm-dev dpkg-dev quilt autotools-dev libreadline-dev libtinfo-dev libncursesw5-dev tk-dev blt-dev libssl-dev zlib1g-dev libbz2-dev libexpat1-dev libbluetooth-dev libsqlite3-dev libgpm2 mime-support netbase net-tools bzip2 p7zip unrar-free npm; do
    echo -e '\e[32m########################################################################\e[0m'
    echo -e "\e[32m# sudo apt-get -y install $x\e[0m"
    echo -e '\e[32m########################################################################\e[0m'
    sudo apt-get -y install $x
done


########################################################################
# Install R and R Studio
########################################################################


toilet -f standard -k  Installing R and R Studio
echo -e '\e[32m########################################################################\e[0m'
echo -e '\e[32m# sudo apt-get -y install r-base\e[0m'
echo -e '\e[32m########################################################################\e[0m'
sudo apt-get install -y r-base 
echo -e '\e[32m########################################################################\e[0m'
echo -e '\e[32m# sudo apt-get -y install r-base-dev\e[0m'
echo -e '\e[32m########################################################################\e[0m'
sudo apt-get install -y r-base-dev
echo -e '\e[32m########################################################################\e[0m'
echo -e '\e[32m# sudo apt-get -y install gdebi-core\e[0m'
echo -e '\e[32m########################################################################\e[0m'
sudo apt-get install -y gdebi-core
pushd /tmp
wget https://download2.rstudio.org/rstudio-server-1.1.453-amd64.deb
echo -e '\e[32m########################################################################\e[0m'
echo -e '\e[32m# yes|gdebi rstudio-server-1.1.453-amd64.deb\e[0m'
echo -e '\e[32m########################################################################\e[0m'
sudo yes|gdebi rstudio-server-1.1.453-amd64.deb
popd

########################################################################
# Install Java
########################################################################


toilet -f standard -k  Installing Java
for x in openjdk-11-doc openjdk-11-jdk openjdk-11-jdk-headless openjdk-11-jre openjdk-11-jre-headless; do
    echo -e '\e[32m########################################################################\e[0m'
    echo -e "\e[32m# sudo apt-get -y install $x\e[0m"
    echo -e '\e[32m########################################################################\e[0m'
    sudo apt-get install -y $x
done

########################################################################
# Install Python2 and Python3
########################################################################

toilet -f standard -k  Installing Python
for x in python3-pip python3-all python3-all-dev python-all python-all-dev python-pip ipython ipython-notebook python3-tk ipython3; do
    echo -e '\e[32m########################################################################\e[0m'
    echo -e "\e[32m# sudo apt-get -y install $x\e[0m"
    echo -e '\e[32m########################################################################\e[0m'
    sudo apt-get install -y $x
done

########################################################################
# Install Octave
########################################################################

toilet -f standard -k  Installing Octave
echo -e '\e[32m########################################################################\e[0m'
echo -e '\e[32m# sudo apt-get -y install octave\e[0m'
echo -e '\e[32m########################################################################\e[0m'
sudo apt-get install -y octave


########################################################################
# Add Packages to Python3
########################################################################

toilet -f standard -k  Adding Packages to Python3
#sudo pip3 install --upgrade pip #Latest pip is broken, so comment out the upgrade

for x in  awscli bigmler csvkit numpy scipy skll numexpr tables openpyxl xlsxwriter xlrd feedparser beautifulsoup4 plotly statsmodels dataset pymongo nltk networkx deap pydot rpy2 jug nose pandas matplotlib seaborn sklearn mrjob lightgbm astropy glob2 graphviz gsl humanize markdown more-itertools natsort ply pyreadline scikit-image sympy tensorflow keras; do
    echo -e '\e[32m########################################################################\e[0m'
    echo -e "\e[32m# sudo pip3 install  $x\e[0m"
    echo -e '\e[32m########################################################################\e[0m'
    sudo pip3 install  $x
done

sudo pip3 install  pandas

########################################################################
# Install Jupyter
########################################################################

toilet -f standard -k  Installing Jupyter
echo -e '\e[32m########################################################################\e[0m'
echo -e '\e[32m# sudo apt-get -y install jupyter-core\e[0m'
echo -e '\e[32m########################################################################\e[0m'
sudo apt-get install -y jupyter-core 
echo -e '\e[32m########################################################################\e[0m'
echo -e '\e[32m# sudo apt-get -y install jupyter-notebook\e[0m'
echo -e '\e[32m########################################################################\e[0m'
sudo apt-get install -y jupyter-notebook


########################################################################
# Install Kaggle
########################################################################

toilet -f standard -k  Installing Kaggle
echo -e '\e[32m########################################################################\e[0m'
echo -e '\e[32m# sudo pip3 install  kaggle\e[0m'
echo -e '\e[32m########################################################################\e[0m'
sudo pip3 install  kaggle

########################################################################
# Install Miscellaneous Tools
########################################################################

toilet -f standard -k  Installing Miscellaneous Tools
echo -e '\e[32m########################################################################\e[0m'
echo -e '\e[32m# sudo npm install -g cowsay xml2json-command\e[0m'
echo -e '\e[32m########################################################################\e[0m'
sudo npm install -g cowsay xml2json-command 

########################################################################
# Modify .bashrc
########################################################################


toilet -f standard -k Updating .bashrc
echo -e 'PATH=${PATH}:.' >> /home/vagrant/.bashrc
echo -e "alias ls='ls -AF --color=auto'" >> /home/vagrant/.bashrc

########################################################################
# Display some HOWTOs and finish
########################################################################

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
echo Now run /vagrant/vagrant_test.sh on the guest command line for a quick sanity-test of the installation.
echo Scroll up a little for some howtos

