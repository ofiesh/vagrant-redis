apt-get update
apt-get upgrade -y
apt-get install -y redis-server
cp /etc/redis/redis.conf /etc/redis/redis.conf.bak
sed 's/bind.*$/bind 0.0.0.0/' < /etc/redis/redis.conf.bak > /etc/redis/redis.conf
service redis-server restart