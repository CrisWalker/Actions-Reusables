#!/bin/bash

# Genera un nombre aleatorio para la carpeta
folder_name="folder_$(uuidgen | cut -c1-8)"

# Crea la carpeta
mkdir "$folder_name"
echo "Carpeta '$folder_name' creada."

# Exporta el nombre de la carpeta como variable de entorno para GitHub Actions
echo "FOLDER_NAME=$folder_name" >> $GITHUB_ENV
