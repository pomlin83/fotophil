#!/bin/bash
src=$1
touch _data/galery.yml
time=$(date +%d.%b-%Y-%H:%M)
echo "# Generation Date:" $time > _data/galery_$2.yml
echo "# Author: Philip Omlin" >> _data/galery_$2.yml
echo "# Image source: " $src >> _data/galery_$2.yml
echo "images:" >> _data/galery_$2.yml
n=0 # index of first hierarchy galery level
j=0
h=-1
o=0 # index for second hierarchy galery level, increases by one if third level exists 
k=-1
for img in $src*.jpg; do
 echo " - url:" $img >> _data/galery_$2.yml
 temp=`echo $img | cut -d . -f 2 | cut -d / -f 5 | cut -d _ -f 1`
 echo "   title: ${temp^[a-z]}" >> _data/galery_$2.yml
 echo "   caption: ${temp^[a-z]}"  >> _data/galery_$2.yml
 echo "   link: ./galery_$temp.html" >> _data/galery_$2.yml
 echo "   index: $n" >> _data/galery_$2.yml
 echo "   subitems:" >> _data/galery_$2.yml
 j=0 # index variable which counts over elements in each level two hierarchy level
 sub=`echo $src${temp^[a-z]}`
 for D in $sub/*.jpg; do
  echo "   - url: $D" >> _data/galery_$2.yml
  temp2=`echo $D | cut -d . -f 2 | cut -d / -f 6 | cut -d _ -f 2`
  echo "     title: ${temp2^[a-z]}" >> _data/galery_$2.yml
  echo "     caption: ${temp2^[a-z]}"  >> _data/galery_$2.yml
  echo "     index_nav: $o" >> _data/galery_$2.yml
  echo "     index_pic: $j" >> _data/galery_$2.yml
  tmp2="${temp}_${temp2}"
  echo "     link: ./galery_$tmp2.html" >> _data/galery_$2.yml
  subsub=`echo $src${temp^[a-z]}/${temp2^[a-z]}`
  i=0 # index which counts over indexes of third level
  for E in $subsub/*.jpg; do
   temp4=`echo $E | cut -d . -f 2 | cut -d /  -f 7`
   if [ "$temp4" != "*" ]; then
    if [ "$i" = "0" ]; then
     echo "     subsubitems:" >> _data/galery_$2.yml
     k=$((k+1))
     h=$((h+1))
     o=$((o+1)) # only increase once a third level exist and only once when traversing third level
    fi
    echo "     - url: $E" >> _data/galery_$2.yml
    temp3=`echo $E | cut -d . -f 2 | cut -d / -f 7 | cut -d _ -f 2`
    echo "       title: ${temp3^[a-z]}" >> _data/galery_$2.yml
    echo "       caption: ${temp3^[a-z]}"  >> _data/galery_$2.yml
    tmp3="${tmp2}_${temp3}"
    echo "       link: ./galery_$tmp3.html" >> _data/galery_$2.yml
    echo "       index_pic: $i" >> _data/galery_$2.yml
    i=$((i+1)) # index of 3rd level
    subsubsub=`echo $src${temp^[a-z]}/${temp2^[a-z]}/${temp3^[a-z]}`
    m=0 # index which counts over elements of 4th level
    for F in $subsubsub/*.jpg; do
     temp6=`echo $F | cut -d . -f 2 | cut -d / -f 8`
     if [ "$temp6" != "*" ]; then
      if [ "$m" = "0" ]; then
       echo "       subsubsubitems:" >> _data/galery_$2.yml
      fi
      echo "       - url: $F" >> _data/galery_$2.yml
      temp5=`echo $F | cut -d . -f 2 | cut -d / -f 8 | cut -d _ -f 2`
      echo "         title: ${temp5^[a-z]}" >> _data/galery_$2.yml
      echo "         caption: ${temp5^[a-z]}" >> _data/galery_$2.yml
      m=$((m+1)) # index which counts over all elements of 4th level
     fi
    done
   fi
  done
  j=$((j+1)) # index of 2nd level
 done
 n=$((n+1))
done
