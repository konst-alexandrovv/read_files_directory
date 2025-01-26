# Script to recursively read files in a directory tree
This script:
- Accepts the directory path as a command line argument
- Recursively traverses all files and subdirectories
For each item found:
- If it is a directory - outputs its name and recursively traverses its contents
- If it's a file - outputs its name and contents with indentation

## To use the script:
1. Save it to a file, such as read_files.sh
2. Make the file executable:
```
$ chmod +x read_files.sh
```
3. Run it, specifying the directory to traverse (result in the console):
```
$ ./read_files.sh /path/to/your/directory
```
4. For console output to a file, specify the direction:
```
$ ./read_files.sh /path/to/your/directory > ./file_out
```

Code review is Claude 3.5

# Скрипт рекурсивного чтения файлов в дереве директорий
Данный скрипт:
- Принимает путь к директории как аргумент командной строки
- Рекурсивно обходит все файлы и поддиректории
Для каждого найденного элемента:
- Если это директория - выводит её имя и рекурсивно обходит её содержимое
- Если это файл - выводит его имя и содержимое с отступами

## Чтобы использовать скрипт:
1. Сохраните его в файл, например read_files.sh
2. Сделайте файл исполняемым:
```
$ chmod +x read_files.sh
```
3. Запустите, указав директорию для обхода (результат в консоли):
```
$ ./read_files.sh /путь/к/вашей/директории
```
4. Для консольного вывода в файл задайте направление:
```
$ ./read_files.sh /путь/к/вашей/директории > ./file_out
```

Code review is Claude 3.5
