echo "criando diretorios"

mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec

echo "criando grupos"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando usuarios"
useradd carlos -m -s /bin/bash -p $(openssl passwd -6 1111) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -6 1111) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -6 1111) -G GRP_ADM

useradd daniel -m -s /bin/bash -p $(openssl passwd -6 1111) -G GRP_VEN
useradd alves -m -s /bin/bash -p $(openssl passwd -6 1111) -G GRP_VEN
useradd nasc -m -s /bin/bash -p $(openssl passwd -6 1111) -G GRP_VEN

useradd orochi -m -s /bin/bash -p $(openssl passwd -6 1111) -G GRP_SEC
useradd ret -m -s /bin/bash -p $(openssl passwd -6 1111) -G GRP_SEC
useradd bk -m -s /bin/bash -p $(openssl passwd -6 1111) -G GRP_SEC

echo "modificando permissões de diretorios"
chmod 777 /public 
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "modificando o grupo do diretorio"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /SEC

echo "finalizando"