sudo apt-get update
sudo apt-get install software-properties-common
sudo add-apt-repository universe
sudo add-apt-repository ppa:certbot/certbot
sudo apt-get update

sudo apt-get install certbot python-certbot-nginx

sudo certbot --nginx

docker run -p 80:80 -p 443:443 -d -v /home/alex/conf.d:/etc/nginx/conf.d nginx

/usr/share/nginx/html
