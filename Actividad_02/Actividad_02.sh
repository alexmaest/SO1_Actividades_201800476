#!/bin/bash

#Para leer la variable de git
read -p "Ingrese el nombre de usuario de GitHub: " GITHUB_USER

#Hacer una solicitud a la API de GitHub
respuesta=$(curl -s "https://api.github.com/users/$GITHUB_USER")

#Dato del id
id=$(echo $respuesta | jq -r '.id')
#Dato de la fecha de creación
fecha=$(echo $respuesta | jq -r '.created_at')

#Imprimir el mensaje
echo "Hola $GITHUB_USER. User ID: $id. Cuenta fue creada el: $fecha."

#Poner el mensaje en un .log con formato para que no aparezcan las horas en el nombre
mkdir -p /tmp/$(date +"%Y-%m-%d")
echo "Hola $GITHUB_USER. User ID: $id. Cuenta fue creada el: $fecha." >> /tmp/$(date +"%Y-%m-%d")/saludos.log