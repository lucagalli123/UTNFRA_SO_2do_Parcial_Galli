#!/bin/bash

echo "modifico el archivo index..."
RUTA_CARPETA_TRABAJO=$(find / -type d -name "202406" 2>/dev/null)
cd ${RUTA_CARPETA_TRABAJO}/docker
cat > index.html << EOF
<div>
<h1> Sistemas Operativos - UTNFRA </h1></br>
<h2> 2do Parcial - Junio 2024 </h2> </br>
<h3> Luca Galli </h3>
<h3> División: 311 </h3>
</div>
EOF

# generar imagen de docker...
echo "dockerfile..."
cat > dockerfile << EOF
FROM nginx:latest

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80
EOF

USUARIO_DOCKER="lucamegadeth"
PASSWD_DOCKER="dckr_pat_b7njajw-N4XHetSL1XjOpQ_sMpo"

# Agrandar el volumen logico lv_docker...
echo "agrando el volumen logico porque no alcanza la memoria"
sudo lvextend -L +450M /dev/mapper/vg_datos-lv_docker
sudo resize2fs /dev/mapper/vg_datos-lv_docker

# Crear la imagen de docker...
echo "creo la imagen de docker"
docker build -t lucamegadeth/web1-galli:latest .

# Iniciar sesión en Docker Hub
echo "$PASSWD_DOCKER" | docker login --username "$USUARIO_DOCKER" --password-stdin

# Pushear la imange a dockerhub...
echo "pusheo la imagen a dockerhub..."
docker push lucamegadeth/web1-galli:latest

# Crear scrip para levantar la imagen...

cat << 'EOF' > $RUTA_CARPETA_TRABAJO/docker/run.sh
docker run -d -p 8080:80 --name prueba lucamegadeth/web1-galli
EOF

sudo chmod 777 run.sh
echo "ejecuto el script para levantar la imagen"
./run.sh
echo "testeo..."
