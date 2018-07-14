#!/usr/bin/env bash

echo -e '\e[32m########################################################################\e[0m'
echo -e '\e[32m# Testing Vagrant installation\e[0m'
echo -e '\e[32m########################################################################\e[0m'

which python3 >/dev/null || echo "error: Python3 was not installed; try manually typing 'sudo apt-get install -y python3-pip python3-all python3-all-dev python-all python-all-dev python-pip ipython' on the guest command line."

for x in awscli bigmler csvkit numpy scipy skll numexpr tables openpyxl xlsxwriter xlrd feedparser plotly statsmodels dataset pymongo nltk networkx deap rpy2 jug nose pandas matplotlib seaborn sklearn; do
    python3 -c "import $x" || echo "error: Python3 $x package was not installed; try manually typing \'sudo pip3 install $x\' on the guest command line."
done

python3 -c "from bs4 import BeautifulSoup" || echo "error: Python3 BeautifulSoup package was not installed; try manually typing \'sudo pip3 install beautifulsoup4\' on the guest command line."

python3 -c "import pydot" || echo "error: Python3 pydot package was not installed; try manually typing \'sudo pip3 install pydot\' on the guest command line."

which kaggle >/dev/null|| echo "error: kaggle was not installed; try manually typing 'sudo pip3 install kaggle' on the guest command line."

which R >/dev/null|| echo "error: R was not installed; try manually typing 'sudo apt-get install  -y r-base r-base-dev' on the guest command line."

which octave >/dev/null|| echo "error: Octave was not installed; try manually typing 'sudo apt-get install -y octave' on the guest command line."

which java >/dev/null || echo "error: Java was not installed; try manually typing 'sudo apt-get install -y openjdk-11-doc openjdk-11-jdk openjdk-11-jdk-headless openjdk-11-jre openjdk-11-jre-headless' on the guest command line."

which jupyter-notebook >/dev/null|| echo "error: jupyter-notebook was not installed; try manually typing 'sudo apt-get install  -y jupyter-core jupyter-notebook' on the guest command line."

echo "no news is good news---if there are no errors, the installation appears to be OK."
