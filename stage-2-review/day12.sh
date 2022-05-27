#!/bin/bash
arr=(10 20 20 10 10 20 5 20)
len=${#arr[@]}
temp=0

function countFreq(){
visited=0
count=1
# count frequencies
        for (( i=0; i<$len; i++))
        do
	 if [ ${visited[i]} == true ]; then
                continue;
 # Count frequency
            for (( j=i+1; j<$len; j++))
            do
	      if [ ${arr[i]} == ${arr[j]} ]
                then
                    visited[j]= "true";
                   (( count++))
                fi
          done
fi
done
echo "${arr[@]} "; 
echo "count is: $count";
}
  for (( i=0; i<$len; i++))
	do
      for (( j=i+1; j<$len; j++))
            do
	 if [  ${arr[i]}  -lt ${arr[j]} ]
                then
                        temp=${arr[i]}
                        arr[i]=${arr[j]}
                        arr[j]=$temp
                fi

           done
done
countFreq ${arr[i]} $len
