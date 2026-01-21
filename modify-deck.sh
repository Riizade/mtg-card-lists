set -ex

DECK_NAME=$1
NOTE_TEXT=$2
BINARY_LOCATION="/home/riizade/Dev/mtg-cube-helper/release/mtg-cube-helper"
OUTPUT_IMAGES="/home/riizade/Downloads/out"

$BINARY_LOCATION add-watermark --input "$DECK_NAME" --watermark Note --note-text "$NOTE_TEXT"
$BINARY_LOCATION add-watermark --input "$DECK_NAME" --watermark Artist
$BINARY_LOCATION prepare-images --skip-bleed-border --output-directory "$OUTPUT_IMAGES" --input-file "$DECK_NAME"
