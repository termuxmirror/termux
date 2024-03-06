#!/bin/bash

# Überprüfen, ob der Dateiname als Parameter übergeben wurde
if [ $# -ne 1 ]; then
    echo "Bitte geben Sie den Dateinamen (ohne .tar.xz-Erweiterung) als Parameter an."
    exit 1
fi

# Den Dateinamen ohne .tar.xz-Erweiterung speichern
filename=$1

# Die URL zum Herunterladen des tar.xz-Archivs zusammenstellen
url="https://linuxtar.netlify.app/tar/${filename}.tar.xz"

# Das Archiv herunterladen
curl -O "$url"

# Überprüfen, ob das Herunterladen erfolgreich war
if [ $? -ne 0 ]; then
    echo "Fehler beim Herunterladen des Archivs."
    exit 1
fi

# Das Archiv entpacken
tar -xf "${filename}.tar.xz"

# Dem Inhalt Ausführrechte verleihen
chmod +x "${filename}"

# Das tar.xz Archiv löschen
rm "${filename}.tar.xz"

echo "Der Inhalt des Archivs wurde erfolgreich heruntergeladen, entpackt, mit Ausführrechten versehen und das Archiv wurde gelöscht."