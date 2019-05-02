![bashmini](https://user-images.githubusercontent.com/12428027/37692278-5515c1cc-2c96-11e8-9542-b4502ff6a310.png)
<p align="center"><b>---Script-Backup-Database-MySQL --<i>Th14go--</b></center> </i>

<p align="justify">Script para backup de várias databases MySQL do mesmo servidor,o script contem informações em todo seu escopo,
o backup é executado, utilizando o mysqldumb do próprio MySQL, após correr o backup de todas as
databases, é iniciado o processo de compactação.É gerado LOG de backup e compactação, para auditoria
de execução do script posteriormente, fique a vontade de dar dicas e melhorar o script !</p>

<b>Configuração para enviar log por e-mail</b></br>
sudo apt-get install mutt </br>
Editar Arquivo de Configuração</br>
nano ~/.muttrc

<b>Colar parâmetros abaixo.</b></br>

<b>Nome do Remetente</b></br>
set realname="Backup por e-mail"

<b>Email do Remetente</b></br>
set from="seuemail@gmail.com;"

<b>Usuario da conta de email</b></br>
set my_user=seuemail@gmail.com

<b>Senha da conta de email</b></br>
set my_pass='senhaemail'

<b>Autenticacao no servidor smtp de email, nesse caso do gmail.com</b></br>
set smtp_url=smtps://$my_user:$my_pass@smtp.gmail.com

<b>Camada de segurança, requerida pelo gmail.com</b></br>
set ssl_force_tls = yes

<b><i>Editar Váriaveis do arquivo bck-bases-mysql.sh</b></i><br>
#Variáveis para SQL dos BCK<br>
#Variáveis do MySQL#<br>
#Databases#<br>


<b>Rotina de Backup - Crontab<br></b>

root@th14golop35:~$  crontab -e   # Inicia tarefa com o agendador de tarefas crontab, em "root"<br>

00 19 * * * /bck-mysql.sh #Backup será executado todos os dias as 19:00hr<br>

Para garantir renicie o serviço do crontab<br>

service crontab restart<br>


---------------------------------------------------------------------------------------------------------------------------------
<p align="center"><b>---Script-Backup-Database-MySQL --<i>Th14go--</b></center> </i>

<p align="justify">Script to backup multiple MySQL databases,the script contains information throughout its scope,
the backup is performed using mysqldumb from the MySQL itself, after running the backup of all
databases, the compression process starts.Backup and compression LOG is generated for auditing
the script afterwards, feel free to give tips and improve the script!</p>

<b>Edit Variables</br></b>
#BCK SQL Variables#</br>
#MySQL Variables #</br>
#Databases#</br>

<b>How to use.</br></b>

#git clone https://github.com/Th14go/script-bck-mysql

#./bck-mysql.sh  ou  sh bck-mysql.sh

<b>Backup routine - Crontab<br></b>

root @ th14golop35: ~ $ crontab -e # Start task with crontab task scheduler, under "root"

00 19 * * * /bck-mysql.sh #Backup will run every day at 7:00 pm

To ensure restart the crontab service

service crontab restart

