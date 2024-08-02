##  Installing MySQL


```md
## Installing on Windows
Download MySQL
Download MySQL installer from https://dev.mysql.com/downloads/installer/ and execute it. 

On this page you can select the version you would like to install. You can choose the web installer or the offline installer.
```

## Download MySQL
![mysql_installation](https://github.com/sheyidev/alx_be_python/blob/main/_assets/msql-1.png?raw=true)

## Install MySQL
![mysql_2](https://github.com/sheyidev/alx_be_python/blob/main/_assets/mysql-2.png?raw=true)

## Install MySQL
![mysql_3](https://github.com/sheyidev/alx_be_python/blob/main/_assets/mysql-3.png?raw=true)


## Install MySQL
![mysql_4](https://github.com/sheyidev/alx_be_python/blob/main/_assets/mysql-4.png?raw=true)


## Linux installation 

```md
## Below instruction is for Ubuntu distribution

Update the package index

sudo apt update

## Install mysql-server

sudo apt install mysql-server

## Ensure the server is running - it should start automatically but to make sure it is running execute the below command

sudo systemctl start mysql.service

## Run MySQL

sudo mysql

## Setup password for root user. Copy paste the below command and change the password string to your password

sudo mysql

mysql > ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';

## Access MySQL with your password with the following command and enter your password when asked.

mysql -u root -p

```