# Script-Backup-Database-MySQL PT
#Thiago Lopes"
Script para backup de várias databases MySQL,
o script contem informações em todo seu escopo,
o backup é executado, utilizando o mysqldumb do
próprio MySQL, após correr o backup de todas as
databases, é iniciado o processo de compactação.
É gerado LOG de backup e compactação, para auditoria
de execução do script posteriormente, fique a vontade 
de dar dicas e melhorar o script !

Editar Váriaveis
#Variáveis para SQL dos BCK
#Variáveis do MySQL#
#DATABASES#

Como utilizar.

git clone https://github.com/Th14go/script-bck-mysql

./script-bck-mysql

Rotina de Backup - Crontab

root@th14golop35:~$  crontab -e   # Inicia tarefa com o agendador de tarefas crontab, em "root"

00 19 * * * /bck-bases-mysql.sh #Backup será executado todos os dias as 19:00hr




# Script-Backup-Database-MySQL - EN -
#Thiago Lopes "
Script to backup multiple MySQL databases,
the script contains information throughout its scope,
the backup is performed using mysqldumb from the
MySQL itself, after running the backup of all
databases, the compression process starts.
Backup and compression LOG is generated for auditing
the script afterwards, feel free to
to give tips and improve the script!

Edit Variables
#BCK SQL Variables #
#MySQL Variables #
#DATABASES#

How to use.

# git clone https://github.com/Th14go/script-bck-mysql

# ./script-bck-mysql

Backup routine - Crontab

root @ th14golop35: ~ $ crontab -e # Start task with crontab task scheduler, under "root"

00 19 * * * /bck-bases-mysql.sh #Backup will run every day at 7:00 pm

