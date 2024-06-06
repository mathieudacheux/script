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

encode_text=$(echo "$encoded_text" | sed -e 's/\//%2F/g' |sed -e 's/\+/%2B/g' | sed -e 's/=/%3D/g')

url="https://ray.so/#code=${encode_text}&theme=tailwind&language=typescript&padding=32&darkMode=true&background=true"

echo "$url" | pbcopy

echo "Lien copié dans le presse papier"
