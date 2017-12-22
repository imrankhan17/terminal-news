#!/bin/bash
# Simple breaking news aggregator.

printf -v d "Reuters headlines as of $(date)."
echo "$d"
echo

curl -s https://uk.reuters.com/assets/jsonWireNews |
awk '/"url":|"headline":/' |
cut -d'"' -f4 |
awk '/^\// { print "\033[0mhttps://uk.reuters.com" $0; next } {print "\033[1m" $0 }'
