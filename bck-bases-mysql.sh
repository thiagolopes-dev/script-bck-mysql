#!/bin/sh
#Backup Databases MySQL -- Thiago Henrique Lopes
DATA=`/bin/date +%Y%m%d`

FICHAS="/mnt/backup/MySQL/fichas-$DATA.sql"
BRCOM="/mnt/backup/MySQL/BRCOM-$DATA.sql"
OFICIO="/mnt/backup/MySQL/OFICIO-$DATA.sql"
OPENFIRE="/mnt/backup/MySQL/SPARK-$DATA.sql"
ZABBIX="/mnt/backup/MySQL/ZABBIX-$DATA.sql"

# variáveis do MySQL#
HOST="localhost"
USER="root"
PASSWORD="xgin94hk"

#DATABASES#
DATABASE="fichas"
DATABASE2="santacasa"
DATABASE3="oficio"
DATABASE4="spark"
DATABASE5="zabbix"

#EXECUTANDO BACKUP DE DATABASES#
mysqldump -h $HOST -u $USER -p$PASSWORD $DATABASE > $FICHAS

mysqldump -h $HOST -u $USER -p$PASSWORD $DATABASE2 > $BRCOM

mysqldump -h $HOST -u $USER -p$PASSWORD $DATABASE3 > $OFICIO

mysqldump -h $HOST -u $USER -p$PASSWORD $DATABASE4 > $OPENFIRE

mysqldump -h $HOST -u $USER -p$PASSWORD $DATABASE5 > $ZABBIX












