#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Clean Download
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🗂️
# @raycast.packageName Développeur

# Documentation:
# @raycast.description Vider le dossier téléchargement
# @raycast.author Mathieu Dacheux

cd ~/Downloads

rm -rf *

echo "Dossier téléchargement vidé"


