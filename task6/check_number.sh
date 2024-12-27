#!/usr/bin/env bash

read -p "Введите число: " num

if (( num > 0 )); then
  echo "Число положительное."
elif (( num < 0 )); then
  echo "Число отрицательное."
else
  echo "Это ноль."
fi
