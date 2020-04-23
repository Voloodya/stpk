sudo apt-get update
echo "Установка Python:"
sudo apt-get install -y python3.5
sudo apt-get install -y python3.5-dev
sudo unlink /usr/bin/python3
sudo ln -s /usr/bin/python3.5 /usr/bin/python3
echo "Версия Python:  "
python -V
echo "Установка PIP3:  "
sudo apt-get install python3-pip
sudo pip3 install --upgrade pip
echo "Версия  PIP:"
pip3 -V
sudo python3 -m pip3 install gunicorn
sudo python3 -m pip3  install django==2.0
#sudo pip3 install --upgrade pip
#sudo pip3 install --upgrade django==2.0
#sudo pip3 install --upgrade gunicorn
