#!/bin/bash

git clone https://github.com/david17601/Podstawa_Pracy_z_git_dsw

repo_name=$(basename "https://github.com/david17601/Podstawa_Pracy_z_git_dsw" .git)

repo_path=$(pwd)/$repo_name

echo "export PATH=\$PATH:$repo_path" >> ~/.bashrc

source ~/.bashrc

echo "Inicjalizacja zakończona pomyślnie."
