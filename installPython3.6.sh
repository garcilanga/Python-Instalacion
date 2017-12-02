#!/bin/sh

# Actualiza la base de datos local de paquetes disponibles para Ubuntu
sudo apt-get update

# Instala los pre-requisitos
sudo apt-get install build-essential checkinstall -y
sudo apt-get install libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev -y

# Descarga Python desde el sitio web oficial
cd /usr/src
sudo wget https://www.python.org/ftp/python/3.6.3/Python-3.6.3.tgz

# Descomprime el fichero descargado
sudo tar xzf Python-3.6.3.tgz

# Compila e instala Python 3.6.3
cd Python-3.6.3
sudo ./configure --enable-optimizations
sudo make altinstall

