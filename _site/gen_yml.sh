#!/bin/bash

touch _data/carousel.yml
time=$(date +%d.%b-%Y-%H:%M)
echo "# Generation Date:" $time > _data/carousel.yml
echo "# Author: Philip Omlin" >> _data/carousel.yml
echo "# Image source: " $1 >> _data/carousel.yml
echo "images:" >> _data/carousel.yml
i=1
for img in $1/normal_l-*.jpg; do
 echo " - normal:" $img >> _data/carousel.yml
 if [ $i -lt 10 ]; then
  echo "   sm: $1/sm_p-0$i.jpg" >> _data/carousel.yml
  echo "   tp: $1/tp_p-0$i.jpg" >> _data/carousel.yml
  echo "   wl: $1/wide_l-0$i.jpg" >> _data/carousel.yml
 else
  echo "   sm: $1/sm_p-$i.jpg" >> _data/carousel.yml
  echo "   tp: $1/tp_p-$i.jpg" >> _data/carousel.yml
  echo "   wl: $1/wide_l-$i.jpg" >> _data/carousel.yml
 fi
 echo "   title: Architecture"  >> _data/carousel.yml
 echo "   caption: Architecture" >> _data/carousel.yml
 ((i=i+1))
done
