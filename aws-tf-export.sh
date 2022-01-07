#!/bin/bash

saida=$(docker-compose run --rm tf terraforming $1 | grep "resource")

if [ -z "$saida" ]; then
    echo "Nenhuma saida"
else
    [ $(docker-compose run --rm tf terraforming $1 >> tf/$1.tf) ]
    echo "Arquivo enviado para pasta tf"
fi
