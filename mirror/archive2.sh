#!/bin/bash

# Der erste Parameter ist die Kompressionsmethode.
compression=$1
# Der zweite Parameter ist der Name des Archivs ohne Erweiterung.
archive_name=$2

# Entferne die ersten zwei Positionalparameter.
shift 2

# Überprüfe, ob eine gültige Kompressionsmethode eingegeben wurde
if [[ -z $compression ]] || [[ -z $archive_name ]]; then
    echo "Benutzung: $0 {tar|gz|bzip2|xz|Z} archiv_name Datei(en)"
    exit 1
fi

# Entscheide die Kompressionsmethode und führe das Archivieren durch.
case $compression in
  tar)
    tar -cvf $archive_name.tar "$@"
    ;;
  gz)
    tar -czvf $archive_name.tar.gz "$@"
    ;;
  bzip2)
    tar -cjvf $archive_name.tar.bz2 "$@"
    ;;
  xz)
    tar -cJvf $archive_name.tar.xz "$@"
    ;;
  Z)
    tar -cZvf $archive_name.tar.Z "$@"
    ;;
  *)
    echo "Unbekannte Kompressionsmethode: $compression"
    exit 1
    ;;
esac

echo "Archiv $archive_name mit Kompression $compression erstellt."