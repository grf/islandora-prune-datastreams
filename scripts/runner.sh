#!/bin/sh

dir=`dirname $0`

if [ ! -f "$dir"/parse-datastreams ]; then
   echo "Can't find the parse-datastreams program, expected it to be in $dir"
fi

root=/data/objectStore/
time find $root -type f -exec "$dir"/parse-datastreams {} + > data.csv 2> data.err
