#!/bin/bash
mysql_user='root' #zmien na uzytkownika
mysql_password='pwsz' #zmien na haslo tego uzytkownika


RED='\033[0;31m'
NC='\033[0m' # No Color 

function clean()
{
    sudo mysql -u $mysql_user -p$mysql_password < createtables.sql
    echo -e "${RED}baza stworzona${NC}\n"
    
    sudo mysql -u $mysql_user -p$mysql_password < filltables.sql
    echo -e "${RED}baza wypelniona${NC}\n"
    sleep 1
}
mysql --version
clean

echo -e "${RED}zadanie na dobrą${NC}\n"
sudo mysql -u $mysql_user -p$mysql_password < dobra.sql

echo -e "${RED}zadanie na bardzo dobrą${NC}\n"
sudo mysql -u $mysql_user -p$mysql_password < bardzodobra.sql



