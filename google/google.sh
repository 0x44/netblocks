#!/bin/bash

dig -tTXT _netblocks.google.com \
    | sed 's/ /\n/g' \
    | grep '^ip4:' \
    | cut -d':' -f2
