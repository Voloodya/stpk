echo "Устаномка сервера MySQL:  "
sudo apt-get install mysql-server
echo "Старт MySQL сервера:  "
sudo /etc/init.d/mysql start
echo "Процесс сервера MySQL:  "
sudo ps -ef |  grep mysql
#echo "Установка клиенто Python:"
#sudo python3 -m pip install mysqlclient
#echo "Установка клиента для Django:"
#sudo pip3 install django mysqlclient


