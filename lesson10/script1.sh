#!/bin/bash

folder_name="my_new_folder"
file_name1="my_file1.txt"
file_name2="my_file2.txt"
file_name3="my_file3.txt"
file_name4="my_file4.txt"
file_name5="my_file5.txt"

mkdir "$folder_name"

touch "$folder_name/$file_name1"
echo "Good day" >> "$folder_name/$file_name1"
date >> "$folder_name/$file_name1"

touch "$folder_name/$file_name2"
chmod 777 "$folder_name/$file_name2"

touch "$folder_name/$file_name3"
head /dev/urandom | tr -dc A-Za-z0-9 | head -c 20 > "$folder_name/$file_name3"

touch "$folder_name/$file_name4"
touch "$folder_name/$file_name5"
