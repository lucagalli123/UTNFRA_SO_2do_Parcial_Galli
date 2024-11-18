clear
ls
cd
ls
clear
vim .bashrc 
source .bashrc 
clear
ls
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
source ~/.bashrc
ls
cd RTA_Examen_20241117/
ls
clear
ls
cd UTN
cd ..
ls
cd UTN-FRA_SO_Examenes/
ls
clear
ls
cd
clear
ls
lsblk
sudo apt update
ansible --version
sudo apt install tre
sudo apt install tree
sudo apt install ansible -y
ansible --version
clear
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo docker run hello-world
sudo usermod -a -G docker $(whoami)
id
exit
cd
id
clear
history
clear
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
ls
history
ls
sudo apt install net-tools
lsblk
DISCO_2=$(lsblk | grep 2G | awk '{print $1}')
lsblk | grep 2G | awk '{print $1}'
lsblk | grep 2G | awk '{print $1}' | head -n 1
lsblk | grep 1G | awk '{print $1}' | head -n 1
clear
ls
cd RTA_Examen_20241117/
ls
vim Punto_A.sh 
disco=$(lsblk | grep 1G | awk '{print $1}' | head -n 1)
echo $disco
clear
ls
sudo chmod 755 Punto_A.sh 
ls
clear
ls
fdisk sdd
sudo fdisk sdd
sudo fdisk /dev/sdd
clear
lsblk
history
clear
ls
./Punto_A.sh 
lsblk
clear
ls
cd ..
ls
git clone https://github.com/lucagalli123/UTNFRA_SO_2do_Parcial_Galli.git
clear
ls
cp -r /home/luca/RTA_Examen_20241117/ /home/luca/UTNFRA_SO_2do_Parcial_Galli/
ls
cd UTNFRA_SO_2do_Parcial_Galli/
ls
cd RTA_Examen_20241117/
ls
git status
ls
cd ..
ls
git status
git add
git add .
git status
git commit -m scripts
git push
clear
ls
cd ..
ls
cd RTA_Examen_20241117/
ls
vim Punto_B.sh 
sudo cat /etc/shadow | grep "$1" | awk -F ':' '{print $2}'
clear
sudo cat /etc/shadow | grep luca | awk -F ':' '{print $2}'
sudo cat /etc/shadow | grep $(whoami) | awk -F ':' '{print $2}'
clear
ls
vim Punto_B
ls
rm Punto_B
ls
vim Punto_B.sh 
cd ..
ls
/home/luca/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt | awk -F ',' 'NR == 8 {print $1}')
/home/luca/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt | awk -F ',' 'NR == 8 {print $1}'
cd ..
ls
cd luca/
ls
cd RTA_Examen_20241117/
ls
vim Punto_B.sh 
cat /home/luca/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt | awk -F ',' 'NR == 8 {print $1}'
cat /home/luca/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt | awk -F ',' 'NR == 8 {print $2}'
cat /home/luca/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt | awk -F ',' 'NR == 10 {print $2}'
clear
cd ..
ls
cd RTA_Examen_20241117/
ls
vim Punto_B.sh 
sudo chmod 755 Punto_B.sh 
clear
ls
./Punto_B.sh 
cd /
ls
cd work/
ls
su 2P_202406_Prog1
ls
clear
cd
ls
cd history
history
clear
ls
cd RTA_Examen_20241117/
ls
cp Punto_B.sh /home/luca/UTNFRA_SO_2do_Parcial_Galli/RTA_Examen_20241117/Punto_B.sh 
ls
cd ..
ls
cd UTNFRA_SO_2do_Parcial_Galli/
ls
cd RTA_Examen_20241117/
ls
cat Punto_B.sh 
clear
ls
sudo chmod 755 Punto_B.sh 
l
ll
clear
cd ..
ls
git status
git add RTA_Examen_20241117/Punto_B.sh
git status
git commit -m Punto_B
git push 
git push
ls
cd ..
git push
ls
cd UTNFRA_SO_2do_Parcial_Galli/
ls
git push
clear
ls
cd ..
ls
clear
ls
history
ls
cd RTA_Examen_20241117/
ls
bim Punto_C.sh 
vim Punto_C.sh 
RUTA_CARPETA_TRABAJO=$(find / -type d -name "202406" 2>/dev/null)
echo $RUTA_CARPTE_TRABAJO
find / -type d -name "202406" 2>/dev/null
echo $RUTA_CARPETA_TRABAJO
BIEN
JAJA
ls
cd ..
sl
cd .
cd ..
ls
cd luca/
ls
cd UTN-FRA_SO_Examenes/
ls
cd 202406
ls
cd docker/
ls
cat index.html 
lsblk
df -h
clear
ls
cd 
ls
cd RTA_Examen_20241117/
ls
vim Punto_C.sh 
sudo chmod 777 Punto_C.sh 
./Punto_C.sh 
docker ps
ls
bieeeeeen
history
clear
ls
cd ..
ls
history
clear
ls
cd RTA_Examen_20241117/
ls
cp Punto_C.sh /home/luca/UTNFRA_SO_2do_Parcial_Galli/RTA_Examen_20241117/Punto_C.sh
cd ..
ls
cd UTNFRA_SO_2do_Parcial_Galli/
ls
cd RTA_Examen_20241117/
ñs
ls
cat Punto_C.sh 
claer
ls
clear
ls
sudo chmod 777 Punto_C.sh 
clear
ls
cd ..
git status
git add RTA_Examen_20241117/Punto_C.sh 
history
git status
git commit -m Punto_c.sh
git push
cd ..
ls
cd RTA_Examen_20241117/
ls
vim Punto_
vim Punto_C.sh 
clear
ls
rm Punto_
clear
ls
cd ..
ls
cd UTN-FRA_SO_Examenes/
ls
cp 202406 /home/luca/UTNFRA_SO_2do_Parcial_Galli/
cp /202406 /home/luca/UTNFRA_SO_2do_Parcial_Galli/
ls
cp /202406/ /home/luca/UTNFRA_SO_2do_Parcial_Galli/
history
ls
cp -r /202406/ /home/luca/UTNFRA_SO_2do_Parcial_Galli/
cp -r /home/luca/UTNFRA_SO_Examenes/202406/ /home/luca/UTNFRA_SO_2do_Parcial_Galli/
cp -r /home/luca/UTN-FRA_SO_Examenes/202406/ /home/luca/UTNFRA_SO_2do_Parcial_Galli/
ls
cd ..
ls
cd UTNFRA_SO_2do_Parcial_Galli/
ls
cd 202406/
ls
cd docker/
ls
cat run.sh 
clear
ls
clear
ls
cd ..
ls
cd ..
ls
cd ..
ls
cd UTNFRA_SO_2do_Parcial_Galli/
ls
git status
git add 202406/
git commit -m carpeta_202406
git status
git push
history
clear
docker ps
cd ..
ls
docker ls
docker ps
ls
exit
clear
cd
ls
exit
ls
clear
cd
ls
clear
ls
cd UTN-FRA_SO_Examenes/
ls
cd 202406
ls
cd
ls
cd UTN-FRA_SO_Examenes/
ls
cd 202406
cd clear
ls
clear
ls
cd ..
ls
cd ..
ls
cd ..
ls
cd luca/
s
ls
cd UTNFRA_SO_2do_Parcial_Galli/
ls
clear
ls
cd RTA_Examen_20241117/
ls
vim Punto_B.sh 
vim Punto_C.sh 
ls
vim Punto_C.sh 
ls
cd ..
ls
git status
git add
git add RTA_Examen_20241117/Punto_C.sh 
git commit -m "modificacion passwd dockerhub"
git push 
clear
history
ls
clear
ls
cd
clear
ls
doker ps
docker ps
ls
clear
ls
docker image ls
lsblk
clear
ls
history
docker image ls
clear
ls
cd RTA_Examen_20241117/
ls
cd
clear
ls
lsblk 
cd UTN-FRA_SO_Examenes/
ls 
cd 202406
ls
cd docker/
ls
cat index.html 
cd ..
ls
cd ..
l
cd ..
clear
ls
cd UTNFRA_SO_2do_Parcial_Galli/
ls
cd 202406/
ls
cd docker/
ls
cat index.html 
cd ..
ls
cd docker
ls
cat run.sh 
./run.sh 
ping registry-1.docker.io
sudo systemctl docker status
sudo systemctl status docker
sudo systemctl restart docker
docker
docker ps
clear
ls
./run.sh 
docker search lucamegadeth/web1-galli
ping -c 4 google.com
exit
./Punto_C.sh 
cd
clear
ls
history
clear
ls
docker ps
docker image
docker image ls
clear
ls
cd UTN-FRA_SO_Examenes/
ls
cd 202406
ls
cd docker
ls
./run.sh 
doker ps
docker ps
clear
ls
clear
ls
cd ..
ls
cd ..
ls
cd ..
ls
cd RTA_Examen_20241117/
ls
vim Punto_
ls
rm Punto_
clear
vim Punto_D.sh 
ls
vim Punto_D.sh 
sudo chmod 777 Punto_D.sh 
./Punto_D.sh 
clear
ls
lsblk
clear
df -h
clear
l
lsblk
clear
ls
history
clear
ls
cp Punto_D.sh /home/luca/UTNFRA_SO_2do_Parcial_Galli/RTA_Examen_20241117/Punto_D.sh
ls
cd ..
ls
cd UTNFRA_SO_2do_Parcial_Galli/
ls
cd RTA_Examen_20241117/
ls
cat Punto_D.sh 
clear
ls
sudo chmod 777 Punto_D.sh 
claer
clear
git status
git add Punto_D.sh 
git status
git commit -m Punto_D.sh
git push
clear
ls
cd ..
ls
cd ..
ls
cd UTN-FRA_SO_Examenes/
ls
cd 202406
ls
cd ..
pwd
cd 202406
ls
pwd
cd ..
ls
cd ..
ls
cd ..
ls
cd luca
ls
cd UTNFRA_SO_2do_Parcial_Galli/
ls
pwd
cp /home/luca/UTN-FRA_SO_Examenes/202406 /home/luca/UTNFRA_SO_2do_Parcial_Galli/202406
cp -r /home/luca/UTN-FRA_SO_Examenes/202406 /home/luca/UTNFRA_SO_2do_Parcial_Galli/202406
ls
clear
ls
cd 202406
ls
cd ..
ls
clear
ls
cd 202406/
ls
cd 202406/
ls
cd ansible/
ls
cd roles/
ls
cd --
cd ..
cd 
ls
cd UTNFRA_SO_2do_Parcial_Galli/
ls
cd 202406
ls
cd ansible/
ls
cd roles/
ls
cd ..
ls
cd ..
ls
rm -r 202406
ls
cd ..
ls
clear
cp -r /home/luca/UTN-FRA_SO_Examenes/202406 /home/luca/UTNFRA_SO_2do_Parcial_Galli
ls
cd ..
ls
clear
ls
cd UTNFRA_SO_2do_Parcial_Galli/
ls
cd 202406/
ls
cd ansible/
ls
cd roles/
ls
cd ..
ls
cd inventory/
ls
cd ..
ls
cd docker/
ls
cd ..
cd ansible/
ls
cat playbook.yml 
cd..
clear
git status
git add .
git status
git commit -m "carpeta 202406 con resultados de ejecucion del punto_D.sh"
git push
clear
ls
cd /
ls
cd work/
ls
ll
clear
ls
cd ..
ls
cd
ls
cd RTA_Examen_20241117/
ls
./Punto_B.sh 
cd /
cd work
ñs
ls
clear
ls
cd /
ls
cd tmp/
ls
cd ..
ls
clear
ls
cd
ls
clear
ls
cd RTA_Examen_20241117/
ls
vim Punto_B.sh 
cd /usr/
ls
cd local/bin/
ls
cat GalliAltaUser-groups.sh 
clear
ls
cd
ls
cd RTA_Examen_20241117/
LS
ls
clear
ls
./Punto_B.sh 
vim Punto_B.sh 
RUTA_CARPETA_SCRIPT=/usr/local/bin/GalliAltaUser-groups.sh
RUTA_BUSQUEDA_LISTA_USUARIOS=$(find / -type d -name "202406" 2>/dev/null)
RUTA_FINAL_LISTA_USUARIOS=${RUTA_BUSQUEDA_LISTA_USUARIOS}/bash_script/Lista_Usuarios.txt
echo "${RUTA_CARPETA_SCRIPT} $(whoami) $RUTA_FINAL_LISTA_USUARIOS"
vim Punto_B.sh 
cd ..
ls
cd UTN-FRA_SO_Examenes/
ls
cd 202406
ls
cd bash_script/
ls
pwd
cd
ls
cd RTA_Examen_20241117/
vim Punto_B.sh 
ls
./Punto_B.sh 
cd /
ls
cd work/
ls
exit
claer
ls
clear
ls
cd
ls
cd RTA
cd RTA_Examen_20241117/
ls
vim Punto_B.sh 
ls
clear
ls
cd ..
ls
cd /
ls
cd work/
ls
cd ..
ls
cd usr/local/bin/
ks
ls
vim GalliAltaUser-groups.sh 
cd
ls
cd ..
ls
cd home/
l
cd /
clear
ls
cd usr/local/bin/
ls
vim GalliAltaUser-groups.sh 
claer
clear
ls
cd ..
ls
clear
ls
cd 
ls
cd UTN-FRA_SO_Examenes/
ls
cd 202406
ls
cd bash_script/
ls
cat Lista_Usuarios.txt 
clear
ls
cd
ls
clear
ls
cd RTA_Examen_20241117/
ls
vim Punto_B.sh 
cat /home/luca/ | awk -F ',' 'NR == 11 {print $3}'
cd ..
cd UTN-FRA_SO_Examenes/
ls
cd 202406
ls
cd bash_script/
ls
pwd
cat /home/luca/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt | awk -F ',' 'NR == 11 {print $3}'
clear
ls
sudo cat /etc/passwd
cd /
cd work/
ls
tree
sudo cat /etc/group
clear
ls
cd ..
ls
ll
tree
clear
ls
sudo visudo
clear
sudo vim /etc/passwd
sudo vim /etc/group
sudo vim /etc/shadow
cd
ls
clear
ls
cd RTA
cd RTA_Examen_20241117/
ls
./Punto_B.sh 
cd /work
ls
clear
ls
cd 2P_202406_Prog2
su 2P_202406_Prog2
clear
ls
cd ..
ls
clear
lñs
ls
clear
exit
su luca
exit
clear
ls
c
cd
clear
ls
cd UTN-FRA_SO_Examenes/
ls
cd 202406
ls
cd ..
ls
cd ..
ls
cd RTA_Examen_20241117/
cd
ls
cd RTA_Examen_20241117/
ls
ṕwd
pwd
cd ..
ls
clear
ls
cd UTNFRA_SO_2do_Parcial_Galli/
ls
cp /home/luca/RTA_Examen_20241117/Punto_B.sh /home/luca/UTNFRA_SO_2do_Parcial_Galli/RTA_Examen_20241117/Punto_B.sh
ls
cd RTA_Examen_20241117/
ls
vim Punto_B.sh 
cd ..
ls
cd ..
ls
cd UTNFRA_SO_2do_Parcial_Galli/
ls
git status
git add RTA_Examen_20241117/Punto_B.sh 
git status
git commit -m "modificacion codigo del script (ultimas lineas)"
git push
clear
history
clear
ls
clear
ls
clear
ls
cd ..
ls
cd
ls
clear
ls
cd ..
ls
cd
ls
clear
ls
vim nose.sh
vim nose.sh 
sudo chmod 777 nose.sh 
./nose.sh 
cd UTNFRA_SO_2do_Parcial_Galli/
ls
cd 202406/
ls
clear
ls
cd ..
ls
cd .
cd ..
ls
cd RTA_Examen_20241117/
ls
cat dockerfile 
cat index.html 
cd ..
ls
cd UTNFRA_SO_2do_Parcial_Galli/
ls
cd 202406/
lñs
ls
clear
ls
cd docker
ks
ls
cat index.html 
cd ..
ls
clear
ls
cd ..
ls
cd ..
ls
cd UTN-FRA_SO_Examenes/
ls
cd 202406
ls
cd docker
ls
pwd
cd ..
ls
cd ..
ls
cd ..
ls
cd UTNFRA_SO_2do_Parcial_Galli/
ls
clear
ls
cd RTA_Examen_20241117/
ls
vim Punto_A.sh 
vim Punto_B.sh 
vim Punto_C.sh 
cd ..
ls
cd ..
ls
clear
vim nose.sh 
./nose.sh 
ls
vim nose.sh 
./nose.sh 
ñs
ls
clear
ls
./nose.sh 
ls
vim nose.sh 
./nose.sh 
vim nose.sh 
cd /
cd
./nose.sh 
vim nose.sh 
./nose.sh 
.vim nose.sh 
vim nose.sh 
./nose.sh 
pwd
cd /home/$(whoami)/UTN-FRA_SO_Examenes
cd
vim nose.sh 
./nose.sh 
vim nose.sh 
./nose.sh 
vim nose.sh 
./nose.sh 
vim nose.sh 
./nose.sh 
clear
ls
cd RTA
cd RTA_Examen_20241117/
ls
cat Punto_C.sh 
clear
ls
cd ..
ls
cd UTNFRA_SO_2do_Parcial_Galli/
ls
cd RTA_Examen_20241117/
ls
vim Punto_C
vim Punto_C.sh 
clear
history
clear
exit
cler
cd
clear
ls
vim nose.sh 
cd UTNFRA_SO_2do_Parcial_Galli/
cd RTA_Examen_20241117/
ls
vim Punto_A.sh 
vim Punto_B.sh 
ls
vim prueba.sh
sudo chmod 777 prueba.sh 
./prueba.sh 
vim prueba.sh 
./prueba.sh 
vim Punto_B.sh 
vim Punto_C.sh 
vim Punto_D.sh 
vim Punto_B.sh 
vim Punto_D.sh 
vim Punto_C
ls
rm Punto_C
vim Punto_C.sh 
docker ps
cd
ls
cd UTNFRA_SO_2do_Parcial_Galli/
cd RTA_Examen_20241117/
vim Punto_D.sh 
ls
clear
ls
rm prueba.sh 
clear
ls
vim Punto_A.sh 
vim Punto_B.sh 
vim Punto_C.sh 
vim Punto_D.sh 
ls
clear
ls
clear
cd ..
ls
git status
git add .
git status
git commit -m "modificaciones de todos los puntos"
git push 
clear
ls
exit
history}
clear
cd
clear
ls
history
clear
ls
exit
history
clear
ls
clear
ls
cd
ls
cd UTNFRA_SO_2do_Parcial_Galli/
ls
cd RTA_Examen_20241117/
ls
vim Punto_B.sh 
git status
git add Punto_B.sh 
git commit -m "agrego comprobacion de resultado"
git push
clear
ls
cd
ls
cd
ls
cd RTA_Examen_20241117/
ls
vim Punto_D.sh 
ls
cd ..
ls
cd UTNFRA_SO_2do_Parcial_Galli/
ls
cd RTA_Examen_20241117/
ls
vim Punto_C.sh 
ls
vim Punto_D.sh 
ls
vim Punto_A.sh 
vim Punto_B.sh 
vim Punto_C.sh 
vim Punto_A.sh 
vim Punto_B.sh 
vim Punto_C.sh 
git status
git add .
git commit -m "modifique dato sobre el script"
git push 
clear
ls
pwd
/home/luca/UTNFRA_SO_2do_Parcial_Galli/RTA_Examen_20241117
cd ..
ls
cd ..
ls
cd RTA_Examen_20241117/
ls
pwd
cd ..
ls
cp /home/luca/UTNFRA_SO_2do_Parcial_Galli/RTA_Examen_20241117/Punto_A.sh /home/luca/RTA_Examen_20241117/Punto_A.sh
ls
cd RTA_Examen_20241117/
ls
vim Punto_A.sh 
cat Punto_B.sh 
cp /home/luca/UTNFRA_SO_2do_Parcial_Galli/RTA_Examen_20241117/Punto_B.sh /home/luca/RTA_Examen_20241117/Punto_B.sh
ls
cat Punto_B.sh 
clear
cp /home/luca/UTNFRA_SO_2do_Parcial_Galli/RTA_Examen_20241117/Punto_C.sh /home/luca/RTA_Examen_20241117/Punto_C.sh
cp /home/luca/UTNFRA_SO_2do_Parcial_Galli/RTA_Examen_20241117/Punto_D.sh /home/luca/RTA_Examen_20241117/Punto_D.sh
ls
cat dockerfile 
cat index.html 
cd ..
ls
clear
ls
cd ls
ls
cd RTA_Examen_20241117/
ls
rm dockerfile 
rm index.html 
clear
ls
cd ..
ls
cd UTN-FRA_SO_Examenes/
ll
ls
cd ..
ls
cd
s
ll
cat .bash_history 
clear
ls
cd
ls
history -a
