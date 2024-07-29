#!/bin/bash

echo "Ingrese el usuario de github a verificar:"
read GITHUB_USER

#si el github user esta vacio se agrega mi usuario de github por defecto
if [[ -z $GITHUB_USER ]]; then
	GITHUB_USER="MrPony21"
fi

echo "Usuario, $GITHUB_USER"

#instalamos jq con:
# sudo apt-get update
# sudo apt-get install jq

response=$(wget -qO- "https://api.github.com/users/$GITHUB_USER")

user=$(echo "$response" | jq -r '.login')
id=$(echo "$response" | jq -r '.id')
created_date=$(echo "$response" | jq -r '.created_at')

fecha=$(date '+%d-%m-%Y')

log_file="tmp/$fecha/saludos.log"

if [[ ! -d "tmp/$fecha" ]]; then
	mkdir -p "tmp/$fecha"
fi

echo "Hola, $user. con user ID: $id. Cuenta creada el: $created_date" >> $log_file


: '
Para crear el cronjob y que se ejecute cada 5 min
Escribir en la terminal lo siguiente:
- crontab -e
- 1
- */5 * * * * /ruta completa del archivo .sh
ctrl+x
(opcional) cambiar la ruta de la variable $log_file ya que se genera desde la carpeta raiz
'

