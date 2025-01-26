#!/bin/bash

# A function for recursive directory traversal
# Функция для рекурсивного обхода директорий
traverse_directory() {
    local dir="$1"
    local indent="$2"

    # We go through all the files and directories in the current directory
    # Перебираем все файлы и директории в текущей директории
    for item in "$dir"/*; do
        # Checking the existence of the element / Проверяем существование элемента
        if [ -e "$item" ]; then
            # We only get the name of the file/directory without the path
            # Получаем только имя файла/директории без пути
            local name=$(basename "$item")

            # If it is a directory / Если это директория
            if [ -d "$item" ]; then
                echo "${indent}Директория: $name"
                echo "${indent}Directory: $name"
                # Recursively traversing the subdirectory
                # Рекурсивно обходим поддиректорию
                traverse_directory "$item" "  $indent"

            # If it is a regular file / Если это обычный файл
            elif [ -f "$item" ]; then
                echo "${indent}Файл: $name"
                echo "${indent}File: $name"
                echo "${indent}Содержимое:"
                echo "${indent}Content:"
                echo "${indent}----------------------------------------"
                # We read and output the contents of the indented file
                # Читаем и выводим содержимое файла с отступом
                while IFS= read -r line; do
                    echo "${indent}$line"
                done < "$item"
                echo "${indent}----------------------------------------"
                echo
            fi
        fi
    done
}

# Checking whether the argument with the path was passed
# Проверяем, был ли передан аргумент с путём
if [ $# -eq 0 ]; then
    echo "Использование: $0 <путь_к_директории>"
    echo "Usage: $0 <path_to_directory>"
    exit 1
fi

# Check of existence of directory
# Проверяем существование директории
if [ ! -d "$1" ]; then
    echo "Ошибка: директория '$1' не существует"
    echo "Error: directory is '$1' not found"
    exit 1
fi

# Start of reading directory / Начинаем обход с указанной директории
echo "Начинаем обход директории: $1"
echo "Start of reading directory: $1"
echo "========================================"
traverse_directory "$1" ""
