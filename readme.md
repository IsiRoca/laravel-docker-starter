# Laravel Docker Starter 1.0


## Prerequisites ##

- Docker
- Docker-compose
- Make
- Git


## Install ##

Clone this repo

```
git clone https://github.com/IsiRoca/laravel-docker-starter.git laravel-docker-starter
```

```
cd laravel-docker-starter
```

Execute in a terminal

```
make install
```

## Desinstall ##

Execute in a terminal

```
./remove.sh
```

## Docker Containers ##

```
docker ps -a
```

laraveldockerstarter_echo-server_1
laraveldockerstarter_nginx_1
laraveldockerstarter_misterkinglish-server_1
laraveldockerstarter_queue-server_1
laraveldockerstarter_redis_1
laraveldockerstarter_mysql-test_1
laraveldockerstarter_mysql_1


* Start a container

```
docker start NAME_CONTAINER
```


Into a container

```
docker exec -ti NAME_CONTAINER bash
```

