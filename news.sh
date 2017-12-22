#!/bin/bash
# Simple breaking news aggregator.

printf -v d "Reuters headlines as of $(date)."
echo "$d"
echo

if [ $# -gt 0 ]; then
    while getopts n: option; do
        case $option in 
            n) number=$(( $OPTARG*2 ));;
        esac
    done
else
    number=50
fi

curl -s https://uk.reuters.com/assets/jsonWireNews |
awk '/"url":|"headline":/' |
cut -d'"' -f4 |
awk '/^\// { print "\033[0mhttps://uk.reuters.com" $0; next } {print "\033[1m" $0 }' |
head -n $number