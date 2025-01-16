#!/bin/bash

if [ $# -lt 2 ]; then
	echo "Использование: $0 <IP-адрес> <Дата в формате 'dd/MMM/yyyy'>"
	exit 1
fi

ip_address=$1
date_pattern=$2

log_file="access.log"
echo "Ищу запросы от $ip_address за $date_pattern:"
count=$(grep "$ip_address" $log_file | grep "\[$date_pattern" | wc -l)


echo "Найдено запросов: $count"

#Этот bash-скрипт предназначен для поиска и подсчета числа HTTP-запросов от определенного IP-адреса за указанную дату в лог-файле веб-сервера
