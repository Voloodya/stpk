sudo apt-get update
echo "Устанавливаем PIP3:"
#sudo pip3 install --upgrade pip

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

echo "Все доступные опции:"
ls /usr/bin/python*
/usr/bin/python  /usr/bin/python2  /usr/bin/python2.7  /usr/bin/python3  /usr/bin/python3.5  /usr/bin/python3.5m  /usr/bin/python3m

echo "Обновите список альтернатив Python для каждой версии, которую вы хотите использовать. В нашем случае это /usr/bin/python2.7 и /usr/bin/python3.5 версии:"
#sudo update-alternatives --install /usr/bin/python python /usr/bin/python2.7 1
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.5 2

echo "Создаем переменную окружения"
virtualenv -p "$PYTHON_PATH" web_study 2> /dev/null
echo $VIRTUAL_ENV
source web_study/bin/activate

echo "Устанавливаем  PIP3:"
sudo apt-get install python3-pip
echo "Версия PIP:"
pip3 -V

echo "Версия Python:"
python -V
