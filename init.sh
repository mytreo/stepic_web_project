#git clone https://github.com/mytreo/stepic_web_project.git /home/box/web
#bash /home/box/web/init.sh
sudo ﻿ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart
sudo ln -s /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/test
sudo /etc/init.d/gunicorn restart
