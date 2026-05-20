#!/bin/bash

set -exuo pipefail

DECK_NAME=$1
NOTE_TEXT=$2

# remove existing watermarks
yq ".cards[].watermarks = []" "$DECK_NAME" -i

# add artist and note
mtg-cube-helper add-watermark --input "$DECK_NAME" --watermark Note --note-text "$NOTE_TEXT"
mtg-cube-helper add-watermark --input "$DECK_NAME" --watermark Artist
