#!/usr/bin/env ash

echo "Starting script run.."

for a in 1 2 3 4 5 6 7 8 9 10
do
    if [ $a == 5 ]
    then
        break
    fi
    echo "Iteration no $a"
    sleep 1
done

echo "Finished!"