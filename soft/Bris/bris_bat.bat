echo off

SET mypath=no

:;Get mysql path
FOR /F "tokens=*"  %%i IN ('where mysql') do SET mypath=%%i

if "%mypath%" == "no" (echo Installer will install MySQL) else (goto SKIP_MYSQL_INSTALLATION)


rem Echo If Mysql is Already Installed skip installation of MYSQL
start /WAIT mysql-5.5.35-win32.msi
set path=%path%"C:\Program Files (x86)\MySQL\MySQL Server 5.5\bin"
setx Path "%path%"

:SKIP_MYSQL_INSTALLATION


Echo Installer is going to create database Specify database password you created during MySQL installation


echo. 

Echo granting permissions to user Please Wait...

"C:\Program Files (x86)\MySQL\MySQL Server 5.5\bin\mysql.exe" --user=root -p -e "GRANT ALL ON db_bris_vts.* TO 'brisvts'@'localhost' IDENTIFIED BY 'sumith' WITH GRANT OPTION; FLUSH PRIVILEGES; CREATE database db_bris_vts"

Echo creating database Please Wait...

"C:\Program Files (x86)\MySQL\MySQL Server 5.5\bin\mysql.exe" --user=root -p -e "CREATE database db_bris_vts"
 
Echo Copying database tables . Please Wait...

 
"C:\Program Files (x86)\MySQL\MySQL Server 5.5\bin\mysql.exe" -u brisvts --password=sumith db_bris_vts --force < bris_db.sql


Echo Copied database

Echo Installing BRIS software

start /WAIT  setup.exe
echo.
echo.
echo.
echo.
echo Installation successfully completed.
pause
Exit