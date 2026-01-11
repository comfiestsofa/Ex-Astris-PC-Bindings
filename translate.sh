#!/usr/bin/env bash
BASE_DIR="${1:-.}"
PY3_SCRIPT="tools/apply-translations.py"

# Detect Python
if command -v python3 &>/dev/null; then
    PY3="python3"
elif command -v python &>/dev/null; then
    PY3="python"
else
    echo "Error: Python is not available." >&2
    exit 1
fi

# Apply translations
"$PY3" "$PY3_SCRIPT"

exit
