#!/bin/bash
# This script calculate the factorial of given number

echo "Enter the number: "
read N
fact=1
for((i=$N;i>1;i--))
do
	fact=`expr $((fact * i))`	
done

echo factorial of the number is: $fact
