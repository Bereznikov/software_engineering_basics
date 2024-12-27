#!/usr/bin/env bash

add() {
  local a=$1
  local b=$2
  echo $(( a + b ))
}

subtract() {
  local a=$1
  local b=$2
  echo $(( a - b ))
}

multiply() {
  local a=$1
  local b=$2
  echo $(( a * b ))
}

divide() {
  local a=$1
  local b=$2
  if [ "$b" -eq 0 ]; then
    echo "Ошибка: деление на ноль!"
    return 1
  else
    echo $(( a / b ))
  fi
}

# Запрос у пользователя двух чисел и операции
read -p "Введите первое число: " num1
read -p "Введите второе число: " num2
read -p "Какую операцию выполнить? (add, subtract, multiply, divide): " operation

# Проверяем, что введённые значения — это целые числа (при желании можно убрать)
re='^-?[0-9]+$'
if ! [[ $num1 =~ $re ]] || ! [[ $num2 =~ $re ]]; then
  echo "Ошибка: введите целые числа."
  exit 1
fi

# Выполняем нужную операцию
case "$operation" in
  add)
    result=$(add "$num1" "$num2")
    ;;
  subtract)
    result=$(subtract "$num1" "$num2")
    ;;
  multiply)
    result=$(multiply "$num1" "$num2")
    ;;
  divide)
    result=$(divide "$num1" "$num2") || exit 1
    ;;
  *)
    echo "Неизвестная операция: $operation"
    exit 1
    ;;
esac

echo "Результат: $result"
