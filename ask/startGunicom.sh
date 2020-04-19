echo "Запуск gunicorn:"
sudo gunicorn --bind 0.0.0.0:8000 --access-logfile acc.log --error-logfile err.log ask.wsgi:application &
#sudo gunicorn --bind='0.0.0.0:8000' ask.wsgi

echo "Завершение запуска gunicorn"
