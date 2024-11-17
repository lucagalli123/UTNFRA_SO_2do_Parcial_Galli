#!/bin/bash

echo "claves ssh..."
yes | ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519 -N ""
cat /home/$(whoami)/.ssh/id_ed25519.pub >> /home/$(whoami)/.ssh/authorized_keys

# carpeta de trabajo de ansible
cd /home/$(whoami)/UTN-FRA_SO_Examenes/202406/ansible

# creacion de roles
ansible-galaxy role init roles/archivo
ansible-galaxy role init roles/estructura
ansible-galaxy role init roles/sudoers
echo "roles creados"

# role estructura
cat << 'EOF' > roles/estructura/tasks/main.yml
---
# tasks file for estructura
- name: "Crear directorios en /tmp/2do_parcial/"
  file:
    path: "/tmp/2do_parcial/{{ item }}"
    state: directory
    mode: '0775'
    recurse: yes
  with_items:
    - "alumno"
    - "equipo"
EOF

# role archivo

mkdir -p roles/archivo/templates
cat << 'EOF' > roles/archivo/tasks/main.yml
---
# tasks file for archivo
- name: "Generar datos del alumno en /tmp/2do_parcial/alumno/datos_alumno.txt"
  template:
    src: "datos_alumno.txt.j2"
    dest: "/tmp/2do_parcial/alumno/datos_alumno.txt"

- name: "Generar datos del equipo en /tmp/2do_parcial/equipo/datos_equipo.txt"
  template:
    src: "datos_equipo.txt.j2"
    dest: "/tmp/2do_parcial/equipo/datos_equipo.txt"
EOF

# role archivo
cat << 'EOF' > roles/archivo/templates/datos_alumno.txt.j2
Nombre: {{ nombre }}
Apellido: {{ apellido }}
División: {{ division }}
EOF

cat << 'EOF' > roles/archivo/templates/datos_equipo.txt.j2
IP: {{ ansible_default_ipv4.address }}
Distribución: {{ ansible_facts['distribution'] }}
Cantidad de Cores: {{ ansible_facts['processor_cores'] }}
EOF

# Configuraracion de variables para el role archivo

cat << 'EOF' > roles/archivo/vars/main.yml
---
# vars file for archivo
nombre: "Luca"
apellido: "Galli"
division: "311"
EOF

# Configurar el role sudoers

cat << 'EOF' > roles/sudoers/tasks/main.yml
---
# tasks file for sudoers
- name: "Configurar sudoers para el grupo 2PSupervisores sin contraseña"
  become: yes
  lineinfile:
    path: /etc/sudoers
    state: present
    regexp: '^%2PSupervisores'
    line: '%2PSupervisores ALL=(ALL) NOPASSWD: ALL'
    validate: 'visudo -cf %s'
EOF

# importar roles

cat << 'EOF' > playbook.yml
---
- hosts: all

  tasks:
    - include_role:
        name: 2do_parcial

    - name: "Otra tarea"
      debug:
        msg: "Despues de la ejecucion del rol"

    - name: "Importar rol estructura"
      import_role:
        name: estructura

    - name: "Importar rol archivo"
      import_role:
        name: archivo

    - name: "Importar rol sudoers"
      import_role:
        name: sudoers
EOF

# Ejecutar playbook
echo "Ejecutando playbook..."
ansible-playbook -i inventory playbook.yml

echo "resultado:"
ls -l /tmp/2do_parcial/

echo "archivo datos alumno:"
cat /tmp/2do_parcial/alumno/datos_alumno.txt

echo "archivo datos de equipo:"
cat /tmp/2do_parcial/equipo/datos_equipo.txt

