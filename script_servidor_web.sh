#!bash/bin

echo "Atualizando o servidor"
apt-get update
apt-get upgrade -y

echo "Instalando o apache2 e unzip"
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando arquivos da aplicação"
wget https://github.com/lgabech/Portfolio/archive/refs/head/main.zip -P /tmp
cd /tmp
unzip main.zip

echo "Copiando arquivos"
cd Portfolio-main
cp -R * /var/www/html/