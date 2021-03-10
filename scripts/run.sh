#!/bin/bash 
EXEC=$1
OUT=$2
N=$3

for i in `seq 10 10 $N`;
do
    echo $i
    ./$EXEC $i >> $OUT
done  
