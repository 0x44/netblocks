#!/bin/bash

function latest_files()
{
  curl --silent https://www.microsoft.com/en-us/download/confirmation.aspx?id=41653 | grep -o "https://download.microsoft[^\"]*xml" | sort | uniq
}

for file in `latest_files` ; do
  curl -s "$file" | grep -oP "(?<=Subnet=\")[^\"]+"
done | sort -n


