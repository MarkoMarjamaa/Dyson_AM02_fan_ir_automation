#!/bin/bash

STATEFILE="./dyson_sequence"
COMMAND=$1

# Read current sequence
SEQUENCE=$(cat "$STATEFILE")

# Send the command
/usr/bin/irsend SEND_ONCE Dyson_AM02 "${COMMAND}_${SEQUENCE}"

# Increment and wrap 0-3, write back
NEXT=$(( (SEQUENCE + 1) % 4 ))
echo "$NEXT" > "$STATEFILE"
