set -ex

DECK_NAME=$1
NOTE_TEXT=$2
BINARY_LOCATION="/home/riizade/Dev/mtg-cube-helper/release/mtg-cube-helper"

# remove existing watermarks
yq ".cards[].watermarks = []" "$DECK_NAME" -i

# add artist and note
$BINARY_LOCATION add-watermark --input "$DECK_NAME" --watermark Note --note-text "$NOTE_TEXT"
$BINARY_LOCATION add-watermark --input "$DECK_NAME" --watermark Artist
