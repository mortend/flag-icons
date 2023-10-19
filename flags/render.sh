#!bin/bash
set -e

DIR="32x22@3x"
mkdir -p "$DIR"

for FILE in 4x3/*; do
    NAME=`basename "$FILE"`
    FOUT="$DIR/${NAME/.svg/.png}"
    rsvg-convert --width 96 --height 66 "$FILE" > "$FOUT"
    echo $FOUT
done
