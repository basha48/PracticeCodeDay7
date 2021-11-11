#! /bin/bash

for (( i=0; i<10 ; i++))
do
n[$i]=$(($(($RANDOM % 10))+100))
done
echo "Generated numbers are :${n[*]}"
#for second smallest number
min=${n[0]}
min2=${n[0]}
for((i=0;i<10;i++))
do
if [ ${n[$i]} -lt $min ]
then
   min2=$min
   min=${n[$i]}
elif [ $min2 -gt ${n[$i]} ] && [ ${n[$i]} -ne $min ]
then
  min2=${n[$i]}
fi
done
echo "Second smallest  number =$min2"
#second largest number
max=${n[0]}
max2=${n[0]}
for((i=0;i<10;i++))
do
if [ ${n[$i]} -gt $max ]
then
   max2=$max
   max=${n[$i]}
elif [ $max2 -lt ${n[$i]} ] && [ ${n[$i]} -ne $max ]
then
  max2=${n[$i]}
fi
done
echo "Second largest number =$max2"
