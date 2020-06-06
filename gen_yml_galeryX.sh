#!/bin/bash
src=$1
touch _data/galery.yml
time=$(date +%d.%b-%Y-%H:%M)
echo "# Generation Date:" $time > _data/galery_$2.yml
echo "# Author: Philip Omlin" >> _data/galery_$2.yml
echo "# Image source: " $src >> _data/galery_$2.yml
echo "images:" >> _data/galery_$2.yml
for img in $src*.jpg; do
 echo " - url:" $img >> _data/galery_$2.yml
 temp=`echo $img | cut -d . -f 2 | cut -d / -f 5 | cut -d _ -f 1`
 echo ${temp^[a-z]}
 echo "   title: ${temp^[a-z]}" >> _data/galery_$2.yml
 echo "   caption: ${temp^[a-z]}"  >> _data/galery_$2.yml
 echo "   link: " >> _data/galery_$2.yml
done
