# Práctica 8 - Automatización de Servidores con Ansible y Docker

Este proyecto crea 5 servidores Ubuntu en Docker, les habilita SSH, y luego
usa Ansible para automatizar:

- Actualización de paquetes
- Crear usuario itla
- Crear carpeta `/home/ansible/app`
- Crear archivo `hola.txt`
- Instalar cowsay y htop

## Archivos importantes
- Dockerfile (crea imagen Ubuntu con SSH)
- docker-compose.yml (levanta 5 servidores)
- inventory.ini (lista de servidores)
- ansible.cfg (configuración)
- playbook.yml (automatizaciones)

## Comandos principales
```bash
docker compose up -d
ansible-playbook playbook.yml
"# practica8-ansible" 
