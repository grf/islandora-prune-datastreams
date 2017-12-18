#!/bin/sh

for i in /data/objectStore/??; do

  partition=`basename $i`
  time find $i/ -type f -exec ./parse-datastreams {} + > $partition.csv 2> $partition.err
  sleep 60

done
