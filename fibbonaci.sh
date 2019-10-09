#!/bin/bash
a=0
b=1

echo "Enter the last number: "
read N

[ $N -lt 2 ] && echo $a $b

trap DEBUG
for((i=0;i<$N;i++))
do
echo $b
c=$((a + b))
a=$b
b=$c
done
trap - DEBUG
