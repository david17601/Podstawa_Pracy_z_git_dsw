#!/bin/bash

if [[ $# -eq 1 && $1 == "--help" ]]; then
  echo "Sposób użycia: $0 [opcje] <liczba_plików>"
  echo ""
  echo "Opcje:"
  echo "--help       Wyświetla tę pomoc"
  echo "--logs       Tworzy pliki logx.txt z informacjami"
  exit 0
fi

if [[ $# -ne 2 ]]; then
  echo "Niepoprawne użycie. Użyj \"$0 --help\" dla pomocy."
  exit 1
fi

if [[ $1 != "--logs" ]]; then
  echo "Niepoprawna opcja: $1. Użyj \"$0 --help\" dla pomocy."
  exit 1
fi

num_files=$2

for ((i=1; i<=$num_files; i++))
do
    filename="log$i.txt"
    echo "Nazwa pliku: $filename"
    echo "Nazwa skryptu: $0"
    echo "Data utworzenia: $(date)" > $filename
done
