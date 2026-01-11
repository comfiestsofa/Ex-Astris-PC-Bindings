#!/usr/bin/env bash
BASE_DIR="${1:-.}"
PY3_SCRIPT="tools/remap-mumuplayer-bindings-for-playstation.py"

# Detect Python
if command -v python3 &>/dev/null; then
    PY3="python3"
elif command -v python &>/dev/null; then
    PY3="python"
else
    echo "Error: Python is not available." >&2
    exit 1
fi

# Find all Base JSON files recursively, excluding .git and Unmodified folders
find "$BASE_DIR" \( -type d -name ".git" -o -type d -name "*(Unmodified)" \) -prune -o -type f -path "*/Base/*XInput, DS4W*.json" -print | while read -r file; do
    # Replace "XInput, DS4W" with "PlayStation" in the filename
    output="${file//XInput, DS4W/PlayStation}"

    echo "Remapping JSON: $file"
    echo "Output: $output"

    "$PY3" "$PY3_SCRIPT" "$file" "$output"
done

exit
