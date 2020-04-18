sudo apt-get update
sudo pip3 install --upgrade pip

# Проверяем питон в системе, если больше 3.4, то все оставляем как есть
# если нет, то обновляемся до python $VERSION_PYTHON
VERSION_PYTHON=3.5
echo "Текущая версия Python3: $(python3 --version)"
if [ $( python3 --version | sed "s/Python\s//g" | cut -d "." -f2 ) -gt 4  ] 
then
    PYTHON_PATH=$(which python3)
else
   sudo apt update
   sudo apt install python$VERSION_PYTHON
   PYTHON_PATH=$(which python3.5)
fi
echo "Путь к python3: $PYTHON_PATH"

echo "Создаем переменную окружения"
virtualenv -p "$PYTHON_PATH" web_study 2> /dev/null
echo $VIRTUAL_ENV
source web_study/bin/activate
