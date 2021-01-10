#!/bin/bash

if [ "$#" -ne 1 ]; then
   echo "Illegal number of parameters"
   exit
fi

docker exec -i lamp_mysql_1 sh -c 'exec mysql -uroot -pdatabase database' < $1