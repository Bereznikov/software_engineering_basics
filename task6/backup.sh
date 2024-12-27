#!/usr/bin/env bash

if [ $# -ne 2 ]; then
  echo "Использование: $0 <источник> <назначение>"
  exit 1
fi

SRC_DIR=$1
DEST_DIR=$2

if [ ! -d "$SRC_DIR" ]; then
  echo "Директория-источник $SRC_DIR не существует."
  exit 1
fi

if [ ! -d "$DEST_DIR" ]; then
  echo "Директория-источник $DEST_DIR не существует."
  exit 1
fi

mkdir -p "$DEST_DIR"

CURRENT_DATE=$(date +%F)

for file in "$SRC_DIR"/*; do
  if [ -f "$file" ]; then
    basename=$(basename "$file")
    new_name="${basename%.*}_${CURRENT_DATE}.${basename##*.}"

    cp "$file" "$DEST_DIR/$new_name"
    echo "Скопирован файл $basename -> $new_name"
  fi
done

echo "Резервное копирование завершено!"
