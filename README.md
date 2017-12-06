# Instalación de Python
![pythonLogo](images/python-logo.png)

Python es un **lenguaje de programación interpretado**, de **código abierto**, **multiplataforma**, de **tipado dinámico** y **multiparadigma**, ya que soporta programación orientación a objetos, programación imperativa y, en menor medida, programación funcional. 

Python sigue los principios de legibilidad y transparencia, haciendo hincapié en una sintaxis que favorezca un **código legible**. Los lenguajes que siguen estos principios se dice que son "pythonicos", en contraposición con aquellos cuyo código es opaco u ofuscado, llamados "no pythonicos".

Se puede instalar Python de varias formas. En este pequeño tutorial vamos a ver cómo instalar **Python 3.6** en **Ubuntu 16.04** descargándolo directamente del sitio web oficial y **compilándolo**.

## Instalación

Python está incluido en el repositorio de paquetes de Ubuntu, pero el **repositorio oficial de Python** proporciona la **versión más actualizada** y ésta es la opción más **recomendable**.

Para instalar la últim versión de Python deberemos actualizar la lista de paquetes disponibles de nuestra distribución de Ubuntu, instalar algunos paquetes previos necesarios, descargar los fuentes de Python del sitio oficial y, por último, compilarlo e instalarlo.

La secuencia de comandos es la siguiente:

```	
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
```

Durante la instalación se ha utilizado el parámetro _--enable-optimizations_ del comando _configure_ para habilitar el soporte de **herramientas adicionales** como SSL, bz2...

También se ha empleado el parámetro _altinstall_ del comando _make_, para que la nueva instalación se realice **sin sobrescribir la instalación prexistente**.

Una vez instalado Python podemos ver la versión exacta ejecutando el siguiente comando:
```
python3.6 -V
```
![Python](images/python_version.png)

También podemos ver la versión del instalador de paquetes de Python:
```
pip3.6 -V
```
![Python](images/python_pip_version.png)

## Instalación en Jupyter (Anaconda)

Jupyter Notebook es un entorno de trabajo web open source que permite crear y compartir documentos que contienen código fuente, ecuaciones, visualizaciones y texto explicativo. Soporta lenguajes como Pythom R y otros.

Si tenemos instalado Jupyter Notebook podemos disponer del lenguaje Python3.6 ejecutando las siguientes instrucciones de instalación:

```
sudo python3.6 -m pip install ipykernel
sudo python3.6 -m ipykernel install --user
```
Una vez instalado, levantamos Jupyter Noteboox y podermos ver Python3.6 disponible en la lista de lenguajes:

```
jupyter notebook
```

![jupyter](images/jupyter_notebook.png)

## Referencias y más información
- [Python.org](https://www.python.org/)
- [Documentación de Python3](https://docs.python.org/3/)
- [How to Install Python 3.6.3 on Ubuntu & LinuxMint ](https://tecadmin.net/install-python-3-6-ubuntu-linuxmint/#)
- [Python (wikipedia)](https://es.wikipedia.org/wiki/Python)
