# Why?
in this project i am trying to bootstrap ansible for various versions of python.
i did some testing before this repo, and found that virtualenv always installs old pip (pip 9) on centos 7 for example.

soo i figured, why not check how other flavours handle pip.



# What?

I have found that when you install `python-virtualenv` with rpm/yum, the global pip version becomes locked to an old version, no amount of upgrades fixes this.




# How?

```
cd docker
bash test.sh
```

## Structure

docker/ = dockerfiles to test different distros

docker/test.sh = bash script to build all dockerfiles

template/ = tools to bootstrap python3 once the OS is ready.




## Notes and reference

## Centos 
you must uninstall the rpm/yum package and install virtualenv with pip 
```
yum erase -y python-virtualenv
```



## Pip bins
pip = python2
pip3 = python3

```
  pip install --upgrade "pip < 21.0"
  pip install --upgrade "virtualenv < 20.0"
  pip3 install --upgrade "pip~=21.3.1"
  pip3 install --upgrade "setuptools~=59.6.0"
```




* python 3.6 
* virtualenv 15
* make
* pip




this will install ansible-core 2.11 which is a new fancy python paradigm.
if you want to use ansible 2.12 and newer, i think you need python 3.8

python2
```
pip install --upgrade "pip < 21.0"
```

python3
```
pip3 install --upgrade "pip~=21.3.1"
pip3 install --upgrade "setuptools~=59.6.0"
pip3 install --upgrade "wheel~=0.37.1"
```

find all the pips
```
 for i in $(locate pip | grep .*pip$); do $i --version; done
```
