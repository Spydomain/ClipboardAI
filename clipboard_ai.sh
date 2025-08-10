#!/bin/bash

LAST_CLIP=""

while true; do
# Get clipboard content
CLIP=$(xclip -selection clipboard -o 2>/dev/null)

# If clipboard changed and is not empty
if [[ "$CLIP" != "$LAST_CLIP" && -n "$CLIP" ]]; then
LAST_CLIP="$CLIP"

# Query Ollama with clipboard text
ANSWER=$(ollama run llama3.2 "$CLIP")

# Show scrollable popup with answer
zenity --text-info --title="Ollama Answer" --width=700 --height=500 --filename=<(echo "$ANSWER")
fi

sleep 1
done
