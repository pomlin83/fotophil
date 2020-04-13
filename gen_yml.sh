#!/bin/bash

touch _data/carousel.yml
time=$(date +%d.%b-%Y-%H:%M)
echo "# Generation Date:" $time > _data/carousel.yml
echo "# Author: Philip Omlin" >> _data/carousel.yml
echo "# Image source: " $1 >> _data/carousel.yml
echo "images:" >> _data/carousel.yml

for img in $1/normal_l-*.jpg; do
echo " - url:" $img >> _data/carousel.yml
echo "   title: <title>"  >> _data/carousel.yml
echo "   caption: <caption>" >> _data/carousel.yml
echo "   subcaption: <subcaption>" >> _data/carousel.yml
done
