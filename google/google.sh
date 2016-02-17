#!/bin/bash

function get_txt()
{
    while read domain ; do
        dig +short -t TXT $domain
    done
}

# set ip version
ipversions=${1:-"46"}

echo _spf.google.com | get_txt \
    | grep -oP "(?<=include:)[^ ]+\b" \
    | get_txt \
    | grep -oP "(?<=ip[$ipversions]:)[^ ]+\b"
