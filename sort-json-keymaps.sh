#!/usr/bin/env bash
BASE_DIR="${1:-.}"
PY3_SCRIPT="tools/sort-json-keymaps.py"
JQ_SCRIPT="tools/sort-json-keymaps.jq"

# Detect Python
if command -v python3 &>/dev/null; then
    PY3="python3"
elif command -v python &>/dev/null; then
    PY3="python"
else
    PY3=""
fi

# Find all JSON files recursively, excluding .git and Unmodified folders
find "$BASE_DIR" \( -type d -name ".git" -o -type d -name "*(Unmodified)" \) -prune -o -type f -name "*.json" -print | while read -r file; do
	echo "Sorting JSON keymap: $file"

    if [ -n "$PY3" ]; then
        # Use Python 3 if available
        "$PY3" "$PY3_SCRIPT" "$file"
    elif command -v jq &>/dev/null; then
        # Use jq otherwise
        tmpfile="$(mktemp)"
        jq --indent 4 -f "$JQ_SCRIPT" "$file" > "$tmpfile" && mv "$tmpfile" "$file"
    else
        echo "Error: Neither Python nor jq is available. Cannot sort $file" >&2
    fi
done

exit
