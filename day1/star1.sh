#!/usr/bin/env bash
FILE=input
INCCOUNT=0
PREVLINE=0

while IFS= read -r LINE; do
    LINENUM=$((LINE))
    if [ $LINENUM -gt $PREVLINE ]
    then
        ((INCCOUNT++))
    fi
    PREVLINE=$((LINENUM))
done < "$FILE"

# Above loop incorrectly counts first entry as being an increase
((INCCOUNT--))

echo "$INCCOUNT"
