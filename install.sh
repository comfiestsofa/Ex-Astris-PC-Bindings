#!/usr/bin/env bash

# Convert current directory to Windows path
repo_dir="$(cygpath -m "$PWD")"

# Export for envsubst
export repo_dir

# Load templates and expand variables
gamepadConfig=$(envsubst < "data/MuMuPlayer/gamepadConfig.template.json")
keymapConfig=$(envsubst < "data/MuMuPlayer/keymapConfig.template.json")

mkdir -p "$APPDATA/Netease/MuMuPlayerGlobal/data/gamepadConfig"
mkdir -p "$APPDATA/Netease/MuMuPlayerGlobal/data/keymapConfig"

echo "$gamepadConfig" > "$APPDATA/Netease/MuMuPlayerGlobal/data/gamepadConfig/com.gryphline.exastris.gp.json"
echo "$keymapConfig" > "$APPDATA/Netease/MuMuPlayerGlobal/data/keymapConfig/com.gryphline.exastris.gp.json"

exit
