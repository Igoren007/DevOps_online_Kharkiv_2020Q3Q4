#!/bin/bash

echo "1. From which ip were the most requests?"
awk '{print $1}' $1 | sort | uniq -c | sort -gr | head -n1

echo "2. What is the most requested page?"
awk  '{print $7}' $1 | sort | uniq -c | sort -gr | head -n1

echo "3. How many requests were there from each ip?"
awk '{print $1}' $1 | sort | uniq -c | sort -gr

echo "4. What non-existent pages were clients referred to?"
grep -B1 -n error404 $1 | awk '{print $7}' | awk 'NF > 0' | sed -n 'p;n'

echo "5. What time did site get the most requests?"
awk '{print $4 $5}' $1 | sort | uniq -c | sort -gr > tmp
max=`head -1 tmp | awk '{print $1}'`
grep "$max "  tmp 

echo "6. What search bots have accessed the site? (AU + IP)"
grep -i bot $1 | awk -F\" '{print $1 $6}' | awk '{ip=$1; $1=$2=$3=$4=$5=""; print ip $0}'| sort -n | uniq



