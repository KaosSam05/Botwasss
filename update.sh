#!bin/bash
pkg update -y
pkg upgrade -y

CYAN="\033[1;36m"
YELLOW="\033[1;33m"
PURPLE="\033[1;35m"
GREEN="\033[1;32m"
RED='\033[1;31m'
NC='\033[0m'

echo $YELLOW"Você tem certeza que deseja atualizar o brizas orion? [s/n]"
read -p "> " opts

if [ $opts = "s" ]; then

clear
echo $YELLOW"Actualizando, porfavot espere..."
git clone https://github.com/KaosSam05/Botwasss > /dev/null 2> /dev/null

cd reykers-bot
cp -r * ..
cd ..
rm -rf reykers-bot
npm i

clear
echo $GREEN"Reykers atualizado correctamente!!"

elif [ $opts = "n"]; then
    clear
    echo $RED"Actualización de Reykers abortada"
    exit
fi
