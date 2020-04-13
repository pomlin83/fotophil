#!/bin/bash

touch _data/galery.yml
time=$(date +%d.%b-%Y-%H:%M)
echo "# Generation Date:" $time > _data/galery.yml
echo "# Author: Philip Omlin" >> _data/galery.yml
echo "# Image source: " $1 >> _data/galery.yml
echo "images:" >> _data/galery.yml
i=1
for img in $1main_normal_l-*.jpg; do
 echo " - normal:" $img >> _data/galery.yml
 if [ $i -lt 10 ]; then
  echo "   sm: $1sm_p-$i.jpg" >> _data/galery.yml
  echo "   tp: $1tp_p-$i.jpg" >> _data/galery.yml
  echo "   wl: $1wide_l-$i.jpg" >> _data/galery.yml
 else
  echo "   sm: $1sm_p-$i.jpg" >> _data/galery.yml
  echo "   tp: $1tp_p-$i.jpg" >> _data/galery.yml
  echo "   wl: $1wide_l-$i.jpg" >> _data/galery.yml
 fi
 echo "   title: Architecture"  >> _data/galery.yml
 echo "   caption: Architecture" >> _data/galery.yml
 ((i=i+1))
done
