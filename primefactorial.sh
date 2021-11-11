#!/bin/bash

echo "Enter a number"
read num
echo "Prime factors of $num are : "
for (( i=2; i<=num; i++ ))
do
    while [ $((num%$i)) == 0 ]
     do
        prime[$i]=$i
        num=$((num/$i))
    done
done
echo "${prime[*]}"
