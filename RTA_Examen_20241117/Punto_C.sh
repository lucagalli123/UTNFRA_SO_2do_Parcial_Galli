#!/bin/bash

# EJECUTAR EL SCRIPT DE ESTA MANERA: ". Punto_C.sh"

RUTA_CARPETA_TRABAJO=$(find / -type d -name "UTN-FRA_SO_Examenes" 2>/dev/null)
cd ${RUTA_CARPETA_TRABAJO}/202406/docker
cat > index.html << EOF
<div>
<h1> Sistemas Operativos - UTNFRA </h1></br>
<h2> 2do Parcial - Junio 2024 </h2> </br>
<h3> Luca Galli </h3>
<h3> División: 311</h3>
</div>
EOF

# generar imagen de docker...
echo "crear dockerfile"
cat > dockerfile << EOF
FROM nginx:latest

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80
EOF

# MODIFICO PARA QUE NO SE VEAN LAS CONTRAÑEAS...
# IGUALMENTE YA SUBI LA IMAGEN A DOCKERHUB ASIQUE SE PUEDE DESCARGAR...

USUARIO_DOCKER="XXX"
PASSWD_DOCKER="XXX"

echo "agrandando el volumen logico para la imagen de docker"
# Agrandar el volumen logico lv_docker...
sudo lvextend -L +450M /dev/mapper/vg_datos-lv_docker
sudo resize2fs /dev/mapper/vg_datos-lv_docker

echo "creo la imagen de docker"
# Crear la imagen de docker...
docker build -t lucamegadeth/web1-galli:latest .

echo "inicio de sesion---(no va a iniciar porque no esta la contraseña...)"
# Iniciar sesión en Docker Hub
echo "$PASSWD_DOCKER" | docker login --username "$USUARIO_DOCKER" --password-stdin

echo "pusheo la imagen a dockerhub"
# Pushear la imange a dockerhub...
docker push lucamegadeth/web1-galli:latest

echo "script para descargar y correr la imagen"
# Crear scrip para levantar la imagen...

cat << 'EOF' > $RUTA_CARPETA_TRABAJO/202406/docker/run.sh
sudo docker run -d -p 8080:80 lucamegadeth/web1-galli
EOF

sudo chmod 777 run.sh
echo "ejecuto script para descargar y correr la imagen..."
./run.sh

echo "testeo con docker ps"
sudo docker ps
