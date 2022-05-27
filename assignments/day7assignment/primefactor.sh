#!/bin/bash
read -p "Enter Numbers:"
temp=$number

declare -a primefactors
index=0
isprime="true"
for(( n=2; n<=$number; n++ ))
do
   for(( i=2; i<=n/2; i++ ))
   do
      if [ $((n%i)) -eq 0 ]
      then
          isprime="false"
      fi
   done

if [ $isprime=="true" ]
then
     if [ $(($number%$n))  -eq 0 ]
     then
           number=$(($number/$n))
           primeFactors[$index]=$n
           ((index++))
           n=1
     fi
fi
isprime="true"
done
echo "prime factors $temp are:"${primefactors[@]}
