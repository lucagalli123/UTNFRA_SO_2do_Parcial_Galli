#!/bin/bash
echo "copio el script en /usr/local..."
cat << 'EOF' | sudo tee /usr/local/bin/GalliAltaUser-groups.sh > /dev/null
#!/bin/bash

LISTA="$1"
RUTA_LISTA_USUARIOS="$2"

PASSWD_USUARIO=$(sudo cat /etc/shadow | grep "$1" | awk -F ':' '{print $2}')

USUARIO_1=$(cat $RUTA_LISTA_USUARIOS | awk -F ',' 'NR == 8 {print $1}')
USUARIO_2=$(cat $RUTA_LISTA_USUARIOS | awk -F ',' 'NR == 9 {print $1}')
USUARIO_3=$(cat $RUTA_LISTA_USUARIOS | awk -F ',' 'NR == 10 {print $1}')
USUARIO_4=$(cat $RUTA_LISTA_USUARIOS | awk -F ',' 'NR == 11 {print $1}')

GRUPO_PRI_USER_1=$(cat $RUTA_LISTA_USUARIOS | awk -F ',' 'NR == 8 {print $2}')
GRUPO_PRI_USER_2=$(cat $RUTA_LISTA_USUARIOS | awk -F ',' 'NR == 9 {print $2}')
GRUPO_PRI_USER_3=$(cat $RUTA_LISTA_USUARIOS | awk -F ',' 'NR == 10 {print $2}')
GRUPO_PRI_USER_4=$(cat $RUTA_LISTA_USUARIOS | awk -F ',' 'NR == 11 {print $2}')

RUTA_HOME_USER_1=$(cat $RUTA_LISTA_USUARIOS | awk -F ',' 'NR == 8 {print $3}')
RUTA_HOME_USER_2=$(cat $RUTA_LISTA_USUARIOS | awk -F ',' 'NR == 9 {print $3}')
RUTA_HOME_USER_3=$(cat $RUTA_LISTA_USUARIOS | awk -F ',' 'NR == 10 {print $3}')
RUTA_HOME_USER_4=$(cat $RUTA_LISTA_USUARIOS | awk -F ',' 'NR == 11 {print $3}')

sudo groupadd $GRUPO_PRI_USER_1
sudo groupadd $GRUPO_PRI_USER_3
sudo groupadd $GRUPO_PRI_USER_4

sudo useradd -m -s /bin/bash -c "$USUARIO_1" -p "$PASSWD_USUARIO" -g $GRUPO_PRI_USER_1 -d $RUTA_HOME_USER_1 $USUARIO_1

sudo useradd -m -s /bin/bash -c "$USUARIO_2" -p "$PASSWD_USUARIO" -g $GRUPO_PRI_USER_2 -d $RUTA_HOME_USER_2 $USUARIO_2

sudo useradd -m -s /bin/bash -c "$USUARIO_3" -p "$PASSWD_USUARIO" -g $GRUPO_PRI_USER_3 -d $RUTA_HOME_USER_3 $USUARIO_3

sudo useradd -m -s /bin/bash -c "$USUARIO_4" -p "$PASSWD_USUARIO" -g $GRUPO_PRI_USER_4 -d $RUTA_HOME_USER_4 $USUARIO_4
EOF

echo "script copiado..."

echo "doy permisos al script copiado..."

sudo chmod 755 /usr/local/bin/GalliAltaUser-groups.sh

echo "ejecuto el script..."
RUTA_CARPETA_SCRIPT=/usr/local/bin/GalliAltaUser-groups.sh
RUTA_LISTA_USUARIOS=/home/$(whoami)/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
${RUTA_CARPETA_SCRIPT} $(whoami) $RUTA_LISTA_USUARIOS
echo "usuarios creados con exito!"
