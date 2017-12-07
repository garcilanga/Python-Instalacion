#!/bin/sh

####################################################################################################
### Instalar Python 3.6 en Ubuntu 16.04 (Xenial)
####################################################################################################

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

# Borra el fichero descargado después de ser descomprimido (opcional)
sudo rm Python-3.6.3.tgz

# Compila e instala Python 3.6.3
cd Python-3.6.3
sudo ./configure --enable-optimizations
sudo make altinstall

# Comprobar la versión de python3
python3.6 -V

# Comprobar la versión del instalador de paquetes (pip)
pip3.6 -V

