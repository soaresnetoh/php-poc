#!/bin/sh

user="usernode9"

if getent passwd "$user" >/dev/null 2>&1; then
    echo "usuario ${user} existe"
else
    echo "usuario ${user} nao existe"
    useradd -m "${user}"
    usermod -aG sudo "${user}"
    chsh -s /bin/bash "${user}"
    if getent passwd "${user}" >/dev/null 2>&1; then
        sudo -H -u ${user} bash -c "export HOME=/home/${user} && curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh > /home/usernode9/install.sh"
        sudo -H -u ${user} bash -c "export HOME=/home/${user} && chmod +x /home/usernode9/install.sh"
        sudo -H -u ${user} bash -c "export HOME=/home/${user} && ./home/usernode9/install.sh"
        sudo -H -u ${user} bash -c "export HOME=/home/${user} && . /home/usernode9/.bashrc"
        sudo -H -u ${user} bash -c "nvm install 9"
        sudo -H -u ${user} bash -c "pm2 update"
        echo "usuario ${user} cadastrado"
    fi
fi