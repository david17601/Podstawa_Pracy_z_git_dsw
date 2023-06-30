#!/bin/bash

if [[ $# -ne 2 ]]; then
  echo "Sposób użycia: $0 --logs <liczba_plików>"
  exit 1
fi

if [[ $1 != "--logs" ]]; then
  echo "Niepoprawny argument: $1"
  echo "Sposób użycia: $0 --logs <liczba_plików>"
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
