#!/bin/sh
#Backup Databases MySQL C/ LOGS -- Criado por: Th14go
#GITHUB- https://github.com/Th14go/script-bck-mysql

DATA=`date +%Y-%m-%d-%H.%M`

#Local onde o arquivo de log sera armazenado.
SYNC_LOG=/var/log/bckmysql/bckmysql$DATA.log
SYNC_LOGC=/var/log/bckmysql/compmysql$DATA.log
#Variáveis para SQL dos BCK
FICHAS="/mnt/backup/MySQL/FICHAS-$DATA.sql"
BRCOM="/mnt/backup/MySQL/BRCOM-$DATA.sql"
OFICIO="/mnt/backup/MySQL/OFICIO-$DATA.sql"
OPENFIRE="/mnt/backup/MySQL/SPARK-$DATA.sql"
ZABBIX="/mnt/backup/MySQL/ZABBIX-$DATA.sql"

#Variáveis do MySQL#
HOST="localhost"
USER="root"
PASSWORD="suasenha"

#DATABASES#
DATABASE="fichas"
DATABASE2="brcom"
DATABASE3="oficio"
DATABASE4="spark"
DATABASE5="zabbix"

#INICIANDO BACKUP;S C/ LOGS#
echo "******************************" >> $SYNC_LOG
echo "Inicio do Backup Database Fichas" >> $SYNC_LOG
date >> $SYNC_LOG
#EXECUTANDO BACKUP DE DATABASE FICHAS#
mysqldump -h $HOST -u $USER -p$PASSWORD $DATABASE > $FICHAS
echo "Fim do Backup da  Database Fichas" >> $SYNC_LOG
date >> $SYNC_LOG
echo "******************************" >> $SYNC_LOG
echo "Inicio do Backup Database Brcom" >> $SYNC_LOG
date >> $SYNC_LOG
#EXECUTANDO BACKUP DE DATABASE BRCOM#
mysqldump -h $HOST -u $USER -p$PASSWORD $DATABASE2 > $BRCOM
echo "Fim do Backup da  Database Brcom" >> $SYNC_LOG
date >> $SYNC_LOG
echo "******************************" >> $SYNC_LOG
echo "Inicio do Backup Database Oficio" >> $SYNC_LOG
date >> $SYNC_LOG
#EXECUTANDO BACKUP DE DATABASE OFICIO#
mysqldump -h $HOST -u $USER -p$PASSWORD $DATABASE3 > $OFICIO
echo "Fim do Backup da  Database Oficio" >> $SYNC_LOG
date >> $SYNC_LOG
echo "******************************" >> $SYNC_LOG
echo "Inicio do Backup Database OpenFire" >> $SYNC_LOG
date >> $SYNC_LOG
#EXECUTANDO BACKUP DE DATABASE OPENFIRE#
mysqldump -h $HOST -u $USER -p$PASSWORD $DATABASE4 > $OPENFIRE
echo "Fim do Backup da  Database OpenFire" >> $SYNC_LOG
date >> $SYNC_LOG
echo "******************************" >> $SYNC_LOG
echo "Inicio do Backup Database Zabbix" >> $SYNC_LOG
date >> $SYNC_LOG
#EXECUTANDO BACKUP DE DATABASE ZABBIX#
mysqldump -h $HOST -u $USER -p$PASSWORD $DATABASE5 > $ZABBIX
echo "Fim do Backup da  Database Zabbix" >> $SYNC_LOG
date >> $SYNC_LOG
echo "******************************" >> $SYNC_LOG

#Compacta Databases Mysql#
echo "******************************" >> $SYNC_LOGC
echo "Inicio da compactacao do Backup Brcom" >> $SYNC_LOGC
date >> $SYNC_LOGC
#echo "******************************" >> $SYNC_LOG
cd /mnt/backup/MySQL/
tar -cvzf DATABASES-$DATA.tar.gz *sql 
echo "******************************" >> $SYNC_LOGC
echo "Fim da compactacao Brcom" >> $SYNC_LOGC
date >> $SYNC_LOGC
echo "******************************" >> $SYNC_LOGC

#Deleta Arquivos SQL  Databases#

rm  -rvf /mnt/backup/MySQL/*.sql

#Sincroniza com diretorio do servidor em diretorio remoto os LOGS#
rsync -Cravp /var/log/bckmysql /mnt/backup/LOG/
