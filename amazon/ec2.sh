#!/bin/bash

# Announced on https://forums.aws.amazon.com/forum.jspa?forumID=30
# Currently at https://forums.aws.amazon.com/ann.jspa?annID=1701

wget 'https://forums.aws.amazon.com/ann.jspa?annID=1701' -O- 2>/dev/null \
    | grep '/\([0-9]\|[1-2][0-9]\|3[0-2]\) ' \
    | awk '{ print $1 }' \
    | sed 's/<br>//g'
