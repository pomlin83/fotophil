#!/bin/bash

touch _data/galery.yml
time=$(date +%d.%b-%Y-%H:%M)
echo "# Generation Date:" $time > _data/alpstein_galery.yml
echo "# Author: Philip Omlin" >> _data/alpstein_galery.yml
echo "# Image source: " $1 >> _data/alpstein_galery.yml
echo "images:" >> _data/alpstein_galery.yml
i=1
for img in $1.jpg; do
 echo " - normal:" $img >> _data/alpstein_galery.yml
 echo "   title: Alpstein"  >> _data/alpstein_galery.yml
 echo "   caption: Alpstein" >> _data/alpstein_galery.yml
 echo "   url: ./architecture_galery.html" >> _data/alpstein_galery.yml
 ((i=i+1))
done
