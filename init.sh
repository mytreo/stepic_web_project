#git clone https://github.com/mytreo/stepic_web_project.git /home/box/web
#bash /home/box/web/init.sh
#sudo rm -rf /etc/nginx/sites-enabled/default
#gunicorn -b 0.0.0.0:8080 hello:app -D
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart
sudo ln -sf /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/test
sudo /etc/init.d/gunicorn restart

