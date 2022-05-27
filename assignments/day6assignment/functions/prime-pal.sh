#!/bin/bash
result=1
function prime()
{
number=$(($1))
for ((  counter=2; counter<$number; counter++ ))
do
   if [  $(($number%$counter))  -eq 0 ]
   then
      result=$(($result+1))
   fi
done

if [ $result -eq 1 ]
then
   echo "prime"
else
   echo "noo"
fi
}

prime 10
