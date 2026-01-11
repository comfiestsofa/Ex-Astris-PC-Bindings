#!/usr/bin/env python3
import json
import csv
import sys
import os

if len(sys.argv) != 3:
    print(f"Usage: {sys.argv[0]} <input.json> <output.json>")
    sys.exit(1)

input_json_file = sys.argv[1]
output_json_file = sys.argv[2]
bindings_tsv = "data/mumuplayer-playstation-button-mappings.tsv"

# Get the directory of the current script
script_dir = os.path.dirname(os.path.abspath(__file__))

# Construct the full path relative to the script
bindings_tsv = os.path.join(script_dir, "..", bindings_tsv)

# Load bindings from TSV
xinput_to_ps = {}
xinput_to_mumuplayer_ps = {}
with open(bindings_tsv, encoding="utf-8") as f:
    reader = csv.DictReader(f, delimiter="\t")
    for row in reader:
        xinput_key = row["XInput/DS4Windows"]
        xinput_to_ps[xinput_key] = row["PlayStation"]
        xinput_to_mumuplayer_ps[xinput_key] = row["PlayStation (MuMuPlayer)"]

# Load JSON
with open(input_json_file, encoding="utf-8") as f:
    data = json.load(f)

# Converts buttons within a combo string
def convert_combo(combo, mapping):
    return "+".join(mapping.get(t, t) for t in combo.split("+"))

# D-Pad symbols used by MuMuPlayer so we can exclude them from description
mumuplayer_dpad = {"←", "↑", "→", "↓"}

# Convert full keymap
for km in data.get("keymaps", []):
    key_text = km.get("key", {}).get("text")
    desc = km.get("icon", {}).get("description", "")

    if key_text:
        km["key"]["text"] = convert_combo(key_text, xinput_to_mumuplayer_ps)

    if desc and key_text:
        tokens = key_text.split("+")
        if any(t in xinput_to_ps for t in tokens if t not in mumuplayer_dpad):
            km["icon"]["description"] = f"({convert_combo(key_text, xinput_to_ps)}) {desc}"

# Save JSON
with open(output_json_file, "w", newline="\n", encoding="utf-8") as f:
    json.dump(data, f, ensure_ascii=False, indent=4)
    f.write("\n")
