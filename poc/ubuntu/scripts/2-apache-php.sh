#!/bin/bash

updateSystem () {
    echo -e "========= Executando # Instalando apache2 e php ==========="
    ansible-playbook /vagrant/ubuntu/scripts/server.yml

}

updateSystem