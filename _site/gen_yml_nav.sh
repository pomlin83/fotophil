#!/bin/bash
src=$1
touch _data/galery.yml
time=$(date +%d.%b-%Y-%H:%M)
echo "# Generation Date:" $time > _data/galery_$2.yml
echo "# Author: Philip Omlin" >> _data/galery_$2.yml
echo "# Image source: " $src >> _data/galery_$2.yml
echo "images:" >> _data/galery_$2.yml
n=1
j=1
k=1
for img in $src*.jpg; do
 echo " - url:" $img >> _data/galery_$2.yml
 temp=`echo $img | cut -d . -f 2 | cut -d / -f 5 | cut -d _ -f 1`
 echo "   title: ${temp^[a-z]}" >> _data/galery_$2.yml
 echo "   caption: ${temp^[a-z]}"  >> _data/galery_$2.yml
 echo "   link: ./galery_$temp.html" >> _data/galery_$2.yml
 echo "   index: $n" >> _data/galery_$2.yml
 echo "   subitems:" >> _data/galery_$2.yml
 sub=`echo $src${temp^[a-z]}`
 for D in $sub/*.jpg; do
  echo "   - url: $D" >> _data/galery_$2.yml
  temp2=`echo $D | cut -d . -f 2 | cut -d / -f 6 | cut -d _ -f 2`
  echo "     title: ${temp2^[a-z]}" >> _data/galery_$2.yml
  echo "     caption: ${temp2^[a-z]}"  >> _data/galery_$2.yml
  echo "     index_nav: $k" >> _data/galery_$2.yml
  echo "     index_pic: $n" >> _data/galery_$2.yml
  tmp2="${temp}_${temp2}"
  echo "     link: ./galery_$tmp2.html" >> _data/galery_$2.yml
  subsub=`echo $src${temp^[a-z]}/${temp2^[a-z]}`
  i=0
  for E in $subsub/*.jpg; do
   temp4=`echo $E | cut -d . -f 2 | cut -d /  -f 7`
   if [ "$temp4" != "*" ]; then
    if [ "$i" = "0" ]; then
     echo "     subsubitems:" >> _data/galery_$2.yml
     k=$((k+1))
    fi
    echo "     - url: $E" >> _data/galery_$2.yml
    temp3=`echo $E | cut -d . -f 2 | cut -d / -f 7 | cut -d _ -f 2`
    echo "       title: ${temp3^[a-z]}" >> _data/galery_$2.yml
    echo "       caption: ${temp3^[a-z]}"  >> _data/galery_$2.yml
    tmp3="${tmp2}_${temp3}"
    echo "       link: ./galery_$tmp3.html" >> _data/galery_$2.yml
    echo "       index: $k" >> _data/galery_$2.yml
    i=$((i+1))
    subsubsub=`echo $src${temp^[a-z]}/${temp2^[a-z]}/${temp3^[a-z]}`
    m=0
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
      m=$((m+1))
     fi
    done
   fi
  done
  j=$((j+1))
 done
 n=$((n+1))
done
