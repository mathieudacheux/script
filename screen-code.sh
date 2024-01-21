#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Screen Code
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 📷
# @raycast.packageName Développeur

# Documentation:
# @raycast.description Créer un screenshot du code depuis le presse papier
# @raycast.author Mathieu Dacheux

clipboard_content=$(pbpaste)

encoded_text=$(echo "$clipboard_content" | base64)

url="https://ray.so/#code=${encode_text}&theme=breeze&language=typescript&padding=32&darkMode=true&background=true"

open $url