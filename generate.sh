#!/bin/bash
filename='active-domains.txt'
n=1
while read line; do
    # reading each line
    RNUMBER=$(($RANDOM%Y))
    cp report-default-0$RNUMBER.json report-$line.json
    # echo "Line No. $n : $line"
    # sed 's/www.ejemplo.gov.co/$line/g' report-default-07.json
    sed -i "" -e 's/www.ejemplo.gov.co/$line/g' report-$line.json
    n=$((n+1))
done < $filename
