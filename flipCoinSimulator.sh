#!/bin/bash

echo "Welcome to flip coin simulator program"

heads=0
tails=0

for (( i=1; i<=10; i++ ))
do
    res=$((RANDOM%2))

    if [ $res -eq 0 ]
    then
            ((heads++))
    else
            ((tails++))
    fi
done

echo "Heads = $heads"
echo "tails = $tails"

if [ $heads -eq $tails ]
then
        echo "Match tied"
elif [ $heads -gt $tails ] 
then
        echo "Heads win"
else
        echo "Tails win"
fi
