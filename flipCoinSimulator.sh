#!/bin/bash

echo "Welcome to flip coin simulator program"

heads=0
tails=0

while (( $heads < 21 && $tails < 21 ))
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
        winCount=$(($heads - $tails))
        echo "Heads win by $winCount"
else
        winCount=$(($tails - $heads))
        echo "Tails win by $winCount"
fi
