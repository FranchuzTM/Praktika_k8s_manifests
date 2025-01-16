#!/bin/bash

#Объявляю переменные
workdir="work_directory"

backupdir="backup_directory"

logfile="system_info.log"

mkdir -p "$workdir"
echo "Рабочая директория создана"

touch "$logfile"
echo "Файл для записи логов"

echo "Начнем собирать информацию о системе"
echo "Дата и время" > "$logfile"
date >> "$logfile"
date

echo "Информация о системе"
echo "Информация о системе:" >> "$logfile"
uname -a >> "$logfile"
uname -a

echo "Проверка оставшегося и занятого места"
echo "Оставлось и занято места:" >> "$logfile"
df -h >> "$logfile"
df -h

cat "$logfile"
sleep 5
mkdir -p "labs/$backupdir"
echo "Директория для бэкапа информации создана"

cp "$logfile" "labs/$backupdir/${logfile}_backup"
echo "файл с логами скопирован в резервную директори."
sleep 3
echo "Скрипт завершил работу"
