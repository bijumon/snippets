#!/bin/bash
# power(i,j) finds i 'raised to' j
#
# design: 
#  succesive multiplication of i*i*i ... j times
#
# while iter <= j
#  res*=i
#
# $1, $2 - command-line parameters

i=$1
j=$2

iter=1
result=$i

while (( "$iter" < "$j" ))
do
    #echo "$i ^ $iter = $result"
    let result*=$i
    let iter++
done

echo $result