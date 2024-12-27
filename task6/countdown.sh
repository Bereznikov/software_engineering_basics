#!/usr/bin/env bash

if [ $# -lt 1 ]; then
  echo "Использование: $0 <число>"
  exit 1
fi

count=$1

re='^-?[0-9]+$'
if ! [[ $count =~ $re ]]; then
  echo "Ошибка: введите целое число."
  exit 1
fi

echo "Обратный отсчёт от $count до 0:"
while [ $count -ge 0 ]; do
  echo "$count"
  ((count--))
done
