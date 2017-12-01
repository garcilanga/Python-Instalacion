#!/bin/sh

# Actualizar la lista de paquetes disponibles
sudo apt-get update

# Instalar los pre-requisitos
sudo apt-get install build-essential checkinstall -y
sudo apt-get install libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev -y

# Descargar Python desde el sitio oficial
cd /usr/src
sudo wget https://www.python.org/ftp/python/3.6.3/Python-3.6.3.tgz

# Descomprimir el fichero
sudo tar xzf Python-3.6.3.tgz

# Instalar Python 3.6.3
cd Python-3.6.3
sudo ./configure --enable-optimizations
sudo make altinstall
