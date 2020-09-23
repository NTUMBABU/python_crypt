#!/bin/bash

#creation du dossier soource
mkdir ~/Dossier_source/

#clonage du script 
git clone https://github.com/NTUMBABU/python_crypt.git ~/Dossier_source

#copie des fichier source dans le dossier systmd
cp ~/Dossier_source/source/mon_service.service /etc/systemd/system/
cp ~/Dossier_source/source/mon_service_2.service /etc/systemd/system/

#Activation des service
sudo systemctl daemon-reload
sudo systemctl enable mon_service.service
sudo systemctl enable mon_service_2.service

#creation de dossier
mkdir ~/cryptoProject/
mkdir ~/cryptoProject/toCrypt/
mkdir ~/cryptoProject/crypted/ 
mkdir ~/cryptoProject/toDecrypt/
mkdir ~/cryptoProject/decrypted/

