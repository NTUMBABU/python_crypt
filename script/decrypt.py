#!/usr/bin/env python3

from Crypto.PublicKey import RSA

#creation d´un couple de clés
key = RSA.generate(1024)

public_key = key.publickey()	
enc_data = public_key.encrypt(b"""bonjour c'est un message secret""", 32)

#dechiffrage
x = key.decrypt(enc_data)
x = x.decode('utf-8')

#afficher ses clés:
k = key.exportKey('PEM')
p = key.publickey().exportKey('PEM')

#importer des clés à partir d'un fichier
with open('private.pem','r') as fk:
	priv = fk.read()
	fk.close()

