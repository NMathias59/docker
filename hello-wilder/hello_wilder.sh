#!/bin/sh
# Affiche un message avec le nom du conteneur
CONTAINER_NAME=$(cat /etc/hostname)
echo "Bonjour Wilder à partir du conteneur $CONTAINER_NAME"
