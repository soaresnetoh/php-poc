# tools-ansible

_Este projeto nasceu do repositorio [tools](https://github.com/caiodelgadonew/tools.git) do Caio Delgado_
# Ferramentas e Aplicações 

Este repositorio contem scripts de automação na preparação de uma workstation.

## Preparando a Workstation

No arquivo [ubuntu.yml](./ubuntu.yml) estão as alterações que serão feitas no computador.  

ATENÇÃO !!! Execute somente se estiver certo do que irá ser instalado. Este procedimento é por sua conta e risco!

Passo a seguir:

1. Instale Ansible
```bash
sudo apt update && sudo apt install ansible unzip git -y
```
2. Clone o repositorio
```bash
git clone https://gitlab.com/soaresnetoh/tools-ansible.git
```

3. Aplique as configurações
```bash
cd tools-ansible && ansible-playbook ubuntu.yml --ask-become-pass
```
>Digite a senha de root, pois alguns procedimentos para instalação precisam de acesso elevado.

___

# License
[GPLv3](https://www.gnu.org/licenses/quick-guide-gplv3.pt-br.html)


# Informações Autor
Created by [Caio Delgado](https://linktr.ee/caiodelgadonew)
Updated by [Hernani Soares](www.linkedin.com/in/soaresnetoh)

Contributions are more than welcome!