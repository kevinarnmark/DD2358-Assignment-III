#!/bin/bash 
EXEC=$1
OUT=$2
N=$3
STEP=$4
for i in `seq 10 $STEP $N`;
do
    echo $i
    ./$EXEC $i >> $OUT
done  
