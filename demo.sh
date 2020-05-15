#!/bin/bash
RED='\033[0;31m'
NC='\033[0m' # No Color 

function clean()
{
    sudo mysql -u root -ppwsz < createtables.sql
    echo -e "${RED}baza stworzona${NC}\n"
    
    sudo mysql -u root -ppwsz < filltables.sql
    echo -e "${RED}baza wypelniona${NC}\n"
    sleep 1
}
clean

sudo mysql -u root -ppwsz < dostateczna.sql


sudo mysql -u root -ppwsz < dobra.sql


sudo mysql -u root -ppwsz < bardzodobra.sql



