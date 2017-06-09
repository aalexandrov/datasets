#!/bin/bash

BASE_URL="http://files.pushshift.io/reddit/comments"

YEAR_FROM=${1:-2006}
YEAR_TO=${2:-2006}

for y in $(seq $YEAR_FROM $YEAR_TO); do
  for m in {01..12}; do
    wget -c -N -P bz2 "$BASE_URL/RC_$y-$m.bz2"
  done
done
