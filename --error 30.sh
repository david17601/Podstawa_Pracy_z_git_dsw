#!/bin/bash

if [[ $1 == "--init" ]]; then
    git clone https://github.com/david17601/Podstawa_Pracy_z_git_dsw

    # Pobranie nazwy katalogu repozytorium
    repo_name=$(basename "https://github.com/david17601/Podstawa_Pracy_z_git_dsw" .git)

    repo_path=$(pwd)/$repo_name

    echo "export PATH=\$PATH:$repo_path" >> ~/.bashrc

    source ~/.bashrc

    echo "Inicjalizacja zakończona pomyślnie."
elif [[ $1 == "--error" || $1 == "-e" ]]; then
    if [[ $2 =~ ^[0-9]+$ ]]; then
        file_count=$2
    else
        file_count=100
    fi


    mkdir -p errorx

    for ((i=1; i<=file_count; i++)); do
        echo "Błąd $i" > errorx/error$i.txt
    done

    echo "Utworzono $file_count plików z błędami w katalogu errorx."
else
    echo "Nieznana opcja."
fi
