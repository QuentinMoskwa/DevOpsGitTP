#!/bin/bash

repertoire_racine="${1:-.}"

repertoires=(
    "$repertoire_racine/personnages"
    "$repertoire_racine/personnages/mascottes"
    "$repertoire_racine/personnages/super_heros"
    "$repertoire_racine/personnages/super_heros/femmes"
    "$repertoire_racine/personnages/super_heros/femmes/cape"
    "$repertoire_racine/personnages/super_heros/femmes/sans_cape"
    "$repertoire_racine/personnages/super_heros/femmes/cape/batgirl"
    "$repertoire_racine/personnages/super_heros/femmes/cape/wonderwoman"
    "$repertoire_racine/personnages/super_heros/femmes/sans_cape/electra"
    "$repertoire_racine/personnages/super_heros/femmes/sans_cape/superwoman"
    "$repertoire_racine/personnages/super_heros/hommes"
    "$repertoire_racine/personnages/super_heros/hommes/cape"
    "$repertoire_racine/personnages/super_heros/hommes/sans_cape"
)

fichiers=(
    "$repertoire_racine/personnages/mascottes/beastie"
    "$repertoire_racine/personnages/mascottes/bibendum"
    "$repertoire_racine/personnages/mascottes/mario"
    "$repertoire_racine/personnages/mascottes/sonic"
    "$repertoire_racine/personnages/super_heros/femmes/cape/batgirl"
    "$repertoire_racine/personnages/super_heros/femmes/cape/wonderwoman"
    "$repertoire_racine/personnages/super_heros/femmes/sans_cape/electra"
    "$repertoire_racine/personnages/super_heros/femmes/sans_cape/superwoman"
    "$repertoire_racine/personnages/super_heros/hommes/cape/batman"
    "$repertoire_racine/personnages/super_heros/hommes/cape/superman"
    "$repertoire_racine/personnages/super_heros/hommes/cape/thor"
    "$repertoire_racine/personnages/super_heros/hommes/sans_cape/antman"
    "$repertoire_racine/personnages/super_heros/hommes/sans_cape/daredevil"
    "$repertoire_racine/personnages/super_heros/hommes/sans_cape/linuxman"
    "$repertoire_racine/personnages/super_heros/hommes/sans_cape/spiderman"
)


for dossier in "${repertoires[@]}"; do
    mkdir -m 755 -p "$dossier"
done

for fichier in "${fichiers[@]}"; do
    if [[ -n "$fichier" ]]; then
        echo "Création du fichier : $fichier" 
        touch "$fichier"
        chmod 644 "$fichier"
    else
        echo "Erreur : la variable fichier est vide"
    fi
done

ls -lR "$repertoire_racine/personnages"
