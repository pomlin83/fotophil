#!/bin/bash
src=./assets/img/galery/$1
touch _data/galery.yml
time=$(date +%d.%b-%Y-%H:%M)
echo "# Generation Date:" $time > _data/galery_$1.yml
echo "# Author: Philip Omlin" >> _data/galery_$1.yml
echo "# Image source: " $src >> _data/galery_$1.yml
echo "images:" >> _data/galery_$1.yml

for img in $src*; do
 echo " - url:" $img >> _data/galery_$1.yml
 echo "   title: Architecture"  >> _data/galery_$1.yml
 echo "   caption: Architecture" >> _data/galery_$1.yml
done
