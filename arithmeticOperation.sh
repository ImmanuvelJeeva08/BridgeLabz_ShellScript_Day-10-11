#!/bin/bash
declare -A data
echo "Enter 1st number " 
read  a
echo "Enter 2nd number "
read  b
echo "Enter 3rd number "
read  c
w=$(($a + $b * $c))
echo "$a + $b * $c : $w"
x=$(($a * $b + $c))
echo "$a * $b + $c : $x"
y=$(($c + $a / $b))
echo "$c + $a / $b : $y"
z=$(($a % $b + $c))
echo "$a % $b + $c : $z"
data["1"]=$w
data["2"]=$x
data["3"]=$y
data["4"]=$z
echo "data on dictionary : ${data[*]}"
for(( i=1;i<=${#data[*]};i++ ))
do
	array[$i]=${data[$i]}
done
echo "Data on Array : ${array[*]}"
desending=( $(printf "%s\n" ${array[@]} | sort -nr ) )  
echo "Descending order: ${desending[*]}"
ascending=( $(printf "%s\n" ${array[@]} | sort -n ) )  
echo "Ascending order: ${ascending[*]}"
