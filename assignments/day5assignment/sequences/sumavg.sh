
# 4. Write a program that reads 5 Random 2 Digit values , then find their sum and the average

a=$(( RANDOM%90+10 ))
b=$(( RANDOM%90+10 ))
c=$(( RANDOM%90+10 ))
d=$(( RANDOM%90+10 ))
e=$(( RANDOM%90+10 ))

echo ""

echo "5 Random Numbers are: "
echo "Number 1: " $a
echo "Number 2: " $b
echo "Number 3: " $c
echo "Number 4: " $d
echo "Number 5: " $e

echo ""

sum="$(( $a + $b + $c + $d + $e ))"
echo "Sum of the 5 Numbers is: " $sum

echo ""

average=`echo $sum | awk '{print $sum/5}'`
echo "Average of the 5 Numbers is: " $average
