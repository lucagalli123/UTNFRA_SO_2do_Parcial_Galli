#!/bin/bash

DISCO_1=$(lsblk | grep 1G | awk '{print $1}')
DISCO_2=$(lsblk | grep 2G | awk '{print $1}' | head -n1)
DISCO_1G=$DISCO_1
DISCO_2G=$DISCO_2

echo "particionamos los discos ${DISCO_1G}/${DISCO_2G} y le damos tipo formato LVM..."

sudo fdisk /dev/$DISCO_1G << EOF
n
p
1


t
8E
w
EOF

sudo fdisk /dev/$DISCO_2G << EOF
n
p
1


t
8E
w
EOF

echo "limpiamos las particiones de basura..."

sudo wipefs -a /dev/${DISCO_1G}1
sudo wipefs -a /dev/${DISCO_2G}1

echo "creacion de volumenes fisicos"

sudo pvcreate /dev/${DISCO_1G}1
sudo pvcreate /dev/${DISCO_2G}1

echo "creacion de grupos de volumen"

sudo vgcreate vg_datos /dev/${DISCO_2G}1
sudo vgcreate vg_temp /dev/${DISCO_1G}1

echo "creacion de volumenes logicos"

sudo lvcreate -L 5M vg_datos -n lv_docker
sudo lvcreate -L 1.5G vg_datos -n lv_workareas
sudo lvcreate -L 512M vg_temp -n lv_swap

echo "le damos formato a la memoria swap..."

sudo mkswap /dev/mapper/vg_temp-lv_swap
sudo swapon /dev/mapper/vg_temp-lv_swap

echo "formateamos con extension .ext4"

sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker

echo "montamos las particiones de lvm..."

sudo mkdir /work/
sudo mount /dev/mapper/vg_datos-lv_workareas /work/
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker

echo "restarteamos docker..."

sudo systemctl restart docker

echo "Muestro los discos montados:"
lsblk
