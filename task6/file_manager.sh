#!/usr/bin/env bash

DIR_NAME="test_dir"

echo "Создаём директорию $DIR_NAME..."
mkdir -p "$DIR_NAME"

echo "Переходим в директорию $DIR_NAME..."
cd "$DIR_NAME" || exit 1

echo "Создаём файлы..."
touch file1.txt file2.txt file3.txt

echo "Содержимое директории после создания файлов:"
ls -l

echo "Удаляем созданные файлы..."
rm file1.txt file2.txt file3.txt

echo "Содержимое директории после удаления файлов:"
ls -l

# Возвращаемся в исходную директорию
echo "Выходим из директории $DIR_NAME..."
cd ..

echo "Готово!"
