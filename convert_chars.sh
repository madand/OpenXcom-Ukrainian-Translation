#!/usr/bin/env bash

if [ -z "$1" ] && [ -z "$2" ]; then
	echo "Usage: $0 sourceFile destinationFile" 1>&2
	exit 1
fi

cp "$1" "$2"
perl -p -i -e 's/і/i/g' "$2"
perl -p -i -e 's/І/I/g' "$2"
perl -p -i -e 's/ї/ï/g' "$2"
perl -p -i -e 's/Ї/Ï/g' "$2"
exit 0;
