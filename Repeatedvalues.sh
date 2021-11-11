#! /bin/bash


for((i=1;i<100;i++))
do
n[$i]=$i;
done

for((i=1;i<100;i++))
do

first=$((${n[i]}/10))
second=$((${n[i]}%10))

if [ $first -eq $second ]
then
temp[i]=${n[$i]}
fi
done
echo "Numbers with similar digits from 1 to 100 : ${temp[*]}"
