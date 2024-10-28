#!/bin/bash

# Usar la variable de entorno FEATURE_CODE en lugar de $1
codigo=${FEATURE_CODE:-"default_code"}

# Crear carpeta con el nombre del código
mkdir "$codigo"
echo "Carpeta '$codigo' creada."

# Nos aseguramos de que estamos en la raíz del repositorio
if [ ! -d .git ]; then
  echo "Este script debe ejecutarse en la raíz de un repositorio de Git."
  exit 1
fi

# Crear una nueva rama con el formato feature/codigo
git checkout -b "feature/$codigo"
echo "Rama 'feature/$codigo' creada."

# Subir la nueva rama al repositorio de GitHub
git push -u origin "feature/$codigo"
echo "Rama 'feature/$codigo' subida a GitHub."

# Finalización del script
echo "Script completado exitosamente."
