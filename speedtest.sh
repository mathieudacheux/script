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

# Exécuter networkQuality et stocker la sortie
output=$(networkQuality)

# Extraire et afficher la valeur de la capacité de montée (uplink)
upload_capacity=$(echo "$output" | awk -F': ' '/Uplink capacity/ {print $2}')
# Extraire et afficher la valeur de la capacité de descente (downlink)
download_capacity=$(echo "$output" | awk -F': ' '/Downlink capacity/ {print $2}')

echo "Ascendant: $upload_capacity Ascendant: $download_capacity"