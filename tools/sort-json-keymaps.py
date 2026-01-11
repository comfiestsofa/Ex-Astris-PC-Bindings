#!/usr/bin/env python3
import json
import sys

if len(sys.argv) != 2:
    print(f"Usage: {sys.argv[0]} <file.json>")
    sys.exit(1)

file_path = sys.argv[1]

# Recursively sort JSON keys for diff readability
def sort_keys_recursive(obj):
    if isinstance(obj, dict):
        return {k: sort_keys_recursive(obj[k]) for k in sorted(obj)}
    elif isinstance(obj, list):
        return [sort_keys_recursive(item) for item in obj]
    else:
        return obj

# Load JSON
with open(file_path, encoding="utf-8") as f:
    data = json.load(f)

# Sort the "keymaps" array by icon.description if non-empty, else by type
if "keymaps" in data and isinstance(data["keymaps"], list):
    def keymap_sort_key(km):
        desc = km.get("icon", {}).get("description", "")
        if desc:
            return desc
        return km.get("type", "")
    data["keymaps"].sort(key=keymap_sort_key)

data = sort_keys_recursive(data)

# Save JSON
with open(file_path, "w", newline="\n", encoding="utf-8") as f:
    json.dump(data, f, ensure_ascii=False, indent=4)
    f.write("\n")
