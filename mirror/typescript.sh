#!/bin/bash

# Überprüfen, ob ein Argument übergeben wurde
if [ $# -ne 1 ]; then
  echo "Usage: $0 <typescript-file>"
  exit 1
fi

# Überprüfen, ob die Datei existiert
if [ ! -f "$1" ]; then
  echo "File '$1' does not exist."
  exit 1
fi

# Lesen und Ausführen der Befehle aus der Aufzeichnungsdatei
while IFS= read -r line; do
  eval "$line"
done < "$1"