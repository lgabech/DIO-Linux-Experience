#!/bin/bash

echo "Criando diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários"

useradd carlos -m -c "Carlos" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
passwd carlos -e
useradd maria -m -c "Maria" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
passwd maria -e
useradd joao -m -c "João" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
passwd joao -e

useradd debora -m -c "Debora" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
passwd debora -e
useradd sebastiana -m -c "Sebastiana" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
passwd sebastiana -e
useradd roberto -m -c "Roberto" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
passwd roberto -e

useradd josefina -m -c "Josefina" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
passwd josefina -e
useradd amanda -m -c "Amanda" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
passwd amanda -e
useradd rogerio -m -c "Rogerio" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
passwd rogerio -e

echo "Editando permissões"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Finalizado"