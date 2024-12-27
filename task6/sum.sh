#!/usr/bin/env bash

if [ $# -ne 2 ]; then
  echo "Использование: $0 <число1> <число2>"
  exit 1
fi

re='^-?[0-9]+$'

if ! [[ $1 =~ $re ]] || ! [[ $2 =~ $re ]]; then
  echo "ValueError: оба аргумента должны быть целыми числами!"
  exit 1
fi

num1=$1
num2=$2

sum=$((num1 + num2))
echo "Сумма чисел $num1 и $num2 равна: $sum"
