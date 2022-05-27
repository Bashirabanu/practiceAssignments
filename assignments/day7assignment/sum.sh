#!/bin/bash

arr=(1 2 -3 2 -2)

len=${#arr[@]}
echo $len

for((  i=0; i<$len; i++ ))
do
   for((  j=0; j<$len; j++ ))
   do
     for((  k=0; k<$len; k++ ))
     do
         if [ $((${arr[i]}+${arr[j]}+${arr[k]}))  -eq 0 ]
         then
              echo "${arr[i]} ${arr[j]} ${arr[k]}"
         fi
     done
   done
done

