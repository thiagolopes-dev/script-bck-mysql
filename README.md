![bashmini](https://user-images.githubusercontent.com/12428027/37692278-5515c1cc-2c96-11e8-9542-b4502ff6a310.png)
<p align="center"><b>---Script-Backup-Database-MySQL --<i>Th14go--</b></center> </i>

<p align="justify">Script para backup de várias databases MySQL do mesmo servidor,o script contem informações em todo seu escopo,
o backup é executado, utilizando o mysqldumb do próprio MySQL, após correr o backup de todas as
databases, é iniciado o processo de compactação.É gerado LOG de backup e compactação, para auditoria
de execução do script posteriormente, fique a vontade de dar dicas e melhorar o script !</p>

<b>Vamos preparar todo o ambiente antes de executar o script</b>
1. Configuração para enviar log por e-mail</br>
2. Rotina de Backup</br>
3. Validar váriaveis do script</br>
4. Enviando database para cloud Mega.nz
5. Backup Somente Dados sem Estrutura Database
6. Ignorar Table em Backup

<b>1.Configuração para enviar log por e-mail</b></br>
sudo apt-get install mutt </br>
Editar Arquivo de Configuração</br>
nano ~/.muttrc

<b>Colar parâmetros abaixo.</b></br>

<b>#Nome do Remetente#</b></br>
set realname="Backup por e-mail"

<b>#Email do Remetente#</b></br>
set from="seuemail@gmail.com;"

<b>#Usuario da conta de email#</b></br>
set my_user=seuemail@gmail.com

<b>#Senha da conta de email#</b></br>
set my_pass='senhaemail'

<b>#Autenticacao no servidor smtp de email, nesse caso do gmail.com#</b></br>
set smtp_url=smtps://$my_user:$my_pass@smtp.gmail.com

<b>#Camada de segurança, requerida pelo gmail.com#</b></br>
set ssl_force_tls = yes

<b>2.Rotina de Backup - Crontab<br></b>

root@th14golop35:~$  crontab -e   # Inicia tarefa com o agendador de tarefas crontab, em "root"<br>

00 19 * * * /bck-mysql.sh #Backup será executado todos os dias as 19:00hr<br>

Para garantir renicie o serviço do crontab<br>

service crontab restart<br>

<b><i>3.Editar Váriaveis do arquivo bck-mysql.sh</b></i><br>
#Variáveis para SQL dos BCK<br>
#Variáveis do MySQL#<br>
#Databases#<br>

4. <b>Configurar Mega.nz para envio de database para cloud</b></br>
Instalar <b>MegaCMD</b> conforme distro. <a href="https://mega.nz/cmd">clique aqui</a></br>
<i>Comandos Mega</i>

mega-login emailcadastrado@gmail.com suasenha </br>
  mega-put  arquivo.txt /diretorioMega  -- Enviar Arquivos</br>
  mega-rm arquivo.txt /diretorioMega   --Excluir Arquivos </br>
  
 5. <b> Se você optar para que o backup seja feito somente com dados acrescente o comando "--no-create-info" no final da linha do dump ficando assim:</b><br>
 Ex:  mysqldump --routines --triggers -h $HOST -u $USER -p$PASSWORD $DATABASEI --no-create-info > $BASEI
 
 6. <b> Comando para ignorar table em Backup</b>
 faça uma variavel para armazenar o valor da database.table
 
 ex:  ignore=database.table1
 
 ex: mysqldump --routines --triggers -h $HOST -u $USER -p$PASSWORD $DATABASEI --no-create-info --ignore-table=$ignore > $BASEI


Execute
./bck-mysql.sh  ou sh bck-mysql.sh
---------------------------------------------------------------------------------------------------------------------------------
<p align="center"><b>---Script-Backup-Database-MySQL --<i>Th14go--</b></center> </i>

<p align="justify">Script to backup multiple MySQL databases,the script contains information throughout its scope,
the backup is performed using mysqldumb from the MySQL itself, after running the backup of all
databases, the compression process starts.Backup and compression LOG is generated for auditing
the script afterwards, feel free to give tips and improve the script!</p>


<b> Let's prepare the whole environment before running the script </b>
1. Configuration to send log by email </br>
2. Backup routine </br>
3. Validate script variants </br>
4. Config Mega.nz send file to Cloud</br> 


<b>1.Configuration to send log by email </b></br>
sudo apt-get install mutt </br>
Edit Configuration File </br>
nano ~ / .muttrc

<b> Paste parameters below. </b> </br>

<b> #Sender Name </b> </br>
set realname = "E-mail Backup"

<b> #Sender Email </b> </br>
set from = "seuemail@gmail.com;"

<b> #Email account user </b> </br>
set my_user=seuemail@gmail.com

<b> #Email account password </b> </br>
set my_pass = 'passwordemail'

<b> #Authentication on smtp mail server, in this case gmail.com </b> </br>
set smtp_url = smtps: // $ my_user: $my_pass@smtp.gmail.com

<b> #Security layer required by gmail.com </b> </br>
set ssl_force_tls = yes

<b>2.Backup routine - Crontab<br></b>

root @ th14golop35: ~ $ crontab -e # Start task with crontab task scheduler, under "root"

00 19 * * * /bck-mysql.sh #Backup will run every day at 7:00 pm

To ensure restart the crontab service

service crontab restart

<b><i>3.Editing Bck-mysql.sh File Variables </b> </i></br>
#BCK SQL Variables# <br>
#MySQL Variables#<br>
#Databases#<br>

4. <b>Config Mega.nz to send file Cloud</b></br>
Install <b>MegaCMD</b><a href="https://mega.nz/cmd">Click Here</a></br>
<i>Command Mega</i>

mega-login emailregister@gmail.com password </br>
  mega-put  file.txt /path/toMega  -- Send File</br>
  mega-rm arquivo.txt /path/ToMega   --Delete File</br>

<b>How to use.</br></b>
#./bck-mysql.sh  ou  sh bck-mysql.sh




