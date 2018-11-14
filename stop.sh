cur=$(pwd)
docker stop mysql
docker rm mysql

docker run --name mysql -d -p 3306:3306 -v $cur/volume/etc/mysql:/etc/mysql -v $cur/volume/data:/var/lib/mysql -v /etc/localtime:/etc/localtime:ro -v init:/init -e MYSQL_ALLOW_EMPTY_PASSWORD=yes mysql:5.7.18
