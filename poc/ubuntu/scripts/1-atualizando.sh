#!/bin/bash

updateSystem () {
    echo -e "========= Executando # Instalando ferramentas ==========="
    sudo apt install ansible \
                     unzip \
                     git -y
}

updateSystem