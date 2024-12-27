#!/usr/bin/env bash

if [ $# -ne 3 ]; then
  echo "Использование: $0 <имя_файла> <слово_для_поиска> <слово_для_замены>"
  exit 1
fi

filename=$1
search=$2
replace=$3

if [ ! -f "$filename" ]; then
  echo "Файл $filename не существует"
  exit 1
fi

sed -i "s/${search}/${replace}/g" "$filename"

echo "Все вхождения слова '$search' в файле '$filename' заменены на '$replace'."
