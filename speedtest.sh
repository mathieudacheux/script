#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title SpeedTest
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🌐
# @raycast.packageName Développeur

# Documentation:
# @raycast.description Faire un test de la connexion réseau
# @raycast.author Mathieu Dacheux

output=$(networkQuality)

upload_capacity=$(echo "$output" | awk -F': ' '/Uplink capacity/ {print $2}')

download_capacity=$(echo "$output" | awk -F': ' '/Downlink capacity/ {print $2}')

echo "Ascendant: $upload_capacity Descendant: $download_capacity"