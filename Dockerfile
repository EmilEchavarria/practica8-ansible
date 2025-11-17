FROM ubuntu:22.04

# Evitar preguntas de apt
ENV DEBIAN_FRONTEND=noninteractive

# Actualizar e instalar openssh-server y sudo
RUN apt update && apt install -y openssh-server sudo

# Crear usuario ansible
RUN useradd -m -s /bin/bash ansible && echo "ansible:ansible" | chpasswd

# Dar privilegios sudo sin contraseña
RUN echo "ansible ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Crear carpeta SSH
RUN mkdir /var/run/sshd

# Exponer puerto ssh
EXPOSE 22

# Iniciar SSH
CMD ["/usr/sbin/sshd","-D"]
