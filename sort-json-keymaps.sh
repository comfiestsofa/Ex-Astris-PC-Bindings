#!/usr/bin/env bash
BASE_DIR="${1:-.}"
JQ_SCRIPT="jq/sort-json-keymaps.jq"

# Find all JSON files recursively, excluding .git and Unmodified folders
find "$BASE_DIR" \( -type d -name ".git" -o -type d -name "*(Unmodified)" \) -prune -o -type f -name "*.json" -print | while read -r file; do
	echo "Sorting JSON keymap: $file"
	tmpfile="$(mktemp)"
	jq --indent 4 -f "$JQ_SCRIPT" "$file" > "$tmpfile" && mv "$tmpfile" "$file"
done

exit
