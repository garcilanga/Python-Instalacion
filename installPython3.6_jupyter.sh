#!/bin/sh

####################################################################################################
### Añadri Python 3.6 a la lista de lenguajes disponibles en Jupyter Notebook
####################################################################################################

sudo python3.6 -m pip install ipykernel
sudo python3.6 -m ipykernel install --user

