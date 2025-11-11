#!/bin/bash
# Указываем каталог (текущий каталог — .)
directory="my_new_folder"
# Поиск файлов (-type f) в каталоге и подсчет строк с помощью wc -l
file_count=$(find "$directory" -type f -print | wc -l)
echo "Количество файлов в папке \"$directory\": $file_count"

chmod 664 my_new_folder/my_file2.txt

# Перебираем все файлы .txt в текущем каталоге
cd my_new_folder
for file in *.txt
do
  # Проверяем, существует ли файл и пуст ли он
  if [ -e "$file" ] && [ ! -s "$file" ]; then
    echo "Удаление пустого файла: $file"
    rm "$file"
  fi
done

