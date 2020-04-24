# Laravel Docker Starter 1.0


## Prerequisites ##

- Docker >= 17.06 CE
- Docker Compose
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


If you don't have **make** installed, you can install it with

```
sudo apt install make
```


Now you can access the application via http://localhost:8000.

**There is no need to run ```php artisan serve```. PHP is already running in a dedicated container.**


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


## Contributing

Do not hesitate to contribute to the project by adapting or adding features ! Bug reports or pull requests are welcome.

## License

This project is released under the [MIT](http://opensource.org/licenses/MIT) license.
