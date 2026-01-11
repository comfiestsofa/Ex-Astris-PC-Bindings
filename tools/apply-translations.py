#!/usr/bin/env python3
import os
import csv
import re

# Translations
TRANSLATIONS_TSV = os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "data", "translations.tsv")

# Build list of languages from TSV, ignoring Base and MuMuPlayer reference ones
LANGUAGES = []
with open(TRANSLATIONS_TSV, encoding="utf-8") as f:
    reader = csv.reader(f, delimiter="\t")
    headers = next(reader)
    LANGUAGES = [h for h in headers if h != "Base" and "(MuMuPlayer)" not in h]

# Load translations
translations_by_lang = {lang: {} for lang in LANGUAGES}
with open(TRANSLATIONS_TSV, encoding="utf-8") as f:
    reader = csv.DictReader(f, delimiter="\t")
    for row in reader:
        key = row["Base"]
        for lang in LANGUAGES:
            value = row.get(lang, "")
            translations_by_lang[lang][key] = value

# Build regex patterns per language
patterns_by_lang = {lang: re.compile("|".join(re.escape(k) for k in translations.keys()))
                    for lang, translations in translations_by_lang.items()}

def replace_keys(match, translations):
    key = match.group(0)
    return translations.get(key, key)

def localize_filename(filename, translations, lang):
    base, ext = os.path.splitext(filename)
    for key, val in translations.items():
        base = base.replace(key, val)
    if f"[{lang}]" not in base:
        base += f" [{lang}]"
    return base + ext

# Process only */*/Base/*.json
for first_level in os.listdir("."):
    if not os.path.isdir(first_level):
        continue
    for second_level in os.listdir(first_level):
        base_folder = os.path.join(first_level, second_level, "Base")
        if not os.path.isdir(base_folder):
            continue

        for file in os.listdir(base_folder):
            if not file.endswith(".json"):
                continue

            original_filepath = os.path.join(base_folder, file)

            # Read original content once
            with open(original_filepath, "r", encoding="utf-8") as f:
                original_content = f.read()

            for lang in LANGUAGES:
                translations = translations_by_lang[lang]
                pattern = patterns_by_lang[lang]

                # Create output folder per language at the same level as first two folders
                lang_folder = os.path.join(first_level, second_level, lang)
                os.makedirs(lang_folder, exist_ok=True)

                # Localize filename
                new_filename = localize_filename(file, translations, lang)
                new_filepath = os.path.join(lang_folder, new_filename)

                # Replace keys in content
                content = pattern.sub(lambda m: replace_keys(m, translations), original_content)

                # Write localized file
                with open(new_filepath, "w", newline="\n", encoding="utf-8") as f:
                    f.write(content)

                print(f"Created translated file: {new_filepath}")

print("Translations applied!")
