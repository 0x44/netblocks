#!/bin/bash

# Source: http://docs.aws.amazon.com/general/latest/gr/aws-ip-ranges.html

curl --silent https://ip-ranges.amazonaws.com/ip-ranges.json \
    | python -c 'import sys; import json; for r in [ str(p["ip_prefix"]) for p in json.load(sys.stdin)["prefixes"] ]: print r;' \
    | sort -n
