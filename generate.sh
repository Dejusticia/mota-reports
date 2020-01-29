#!/bin/bash
filename='fila.txt'
n=1
epoch=1580216400
while read line; do
    # reading each line
    cp report-default.json $line
    echo "Line No. $n : $line"
    n=$((n+1))
done < $filename
