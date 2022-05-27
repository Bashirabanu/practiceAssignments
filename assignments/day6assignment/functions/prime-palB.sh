#!/bin/bash
sum=0
reminder=0

function palindrome()
{
    number=$(($1))
    temp=$number
    while  [ $number -gt 0 ]
    do
       reminder=$(($number%10))
       sum=$((($sum*10)+$reminder))
       number=$(($number/10))
    done
    if [  $temp  -eq $sum  ]
     then
       echo "Palindrome"
     else
      echo "Noo"
    fi

}
palindrome 12
