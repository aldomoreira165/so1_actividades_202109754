#! /usr/bin/bash

GITHUB_USER="aldomoreira165"

url="https://api.github.com/users/$GITHUB_USER"

response=$(curl -s $url)

github_user=$(echo "$response" | jq -r '.login')
id=$(echo "$response" | jq -r '.id')
created_at=$(echo "$response" | jq -r '.created_at')

message="Hola $github_user. User ID: $id. Cuenta fue creada el: $created_at."

date=$(date +'%Y-%m-%d')

mkdir -p "$HOME/tmp/$date"

log_file="$HOME/tmp/$date/saludos.log"

echo $message
echo $message >> $log_file 

