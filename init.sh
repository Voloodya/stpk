#sudo ln -sf  /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
#sudo rm /etc/nginx/sites-enabled/default
#sudo mv /home/box/web/etc/default.txt /home/box/web/etc/default
#sudo ln -sf /home/box/web/etc/default /etc/nginx/sites-enabled/default
#sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/nginx.conf
sudo mv /home/box/web/etc/nginx.conf /home/box/web/etc/default
echo "/ETC/:  "
ls /home/box/web/etc/
echo "Фаил default:  "
cat /home/box/web/etc/default
echo "Перезапись символ ссылки:  "
sudo ln -sf /home/box/web/etc/default /etc/nginx/sites-enabled/default
echo "Содержимое '/etc/nginx/sites-enabled/default':  "
cat /etc/nginx/sites-enabled/default
echo "Перезапуск NGINX:  "
sudo /etc/init.d/nginx restart

#sudo ls /etc/nginx/sites-enabled/
#sudo gunicorn --bind='0.0.0.0:8080' hello:wsgi_application
#sudo gunicorn --bind='0.0.0.0:8000' ask.wsgi 
#sudo ln -sf /home/box/web/etc/gunicorn-wsgi.conf /etc/gunicorn.d/test-wsgi
#sudo ln -sf /home/box/web/etc/gunicorn-django.conf /etc/gunicorn.d/test-django
#sudo sudo /etc/init.d/gunicorn restart
