# Recursively sort JSON keys for diff readability
def sort_keys_recursive:
	if type=="object" then with_entries(.value |= sort_keys_recursive)
	elif type=="array" then map(sort_keys_recursive)
	else . end;

# Sort the "keymaps" array by icon.description if non-empty, else by type
.keymaps |= sort_by(
	(.icon.description // "") as $desc |
	if $desc == "" then .type else $desc end
) | sort_keys_recursive
