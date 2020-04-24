#!/bin/bash

cp .env.example .env &&
docker-compose run --rm --no-deps laravel-docker-starter-server composer install &&
docker-compose run --rm --no-deps laravel-docker-starter-server php artisan key:generate &&
#docker-compose run --rm --no-deps laravel-docker-starter-server php artisan horizon:install &&
#docker-compose run --rm --no-deps laravel-docker-starter-server php artisan telescope:install &&
docker-compose run --rm --no-deps laravel-docker-starter-server php artisan storage:link &&
docker run --rm -it -v $(pwd):/app -w /app node npm install &&
docker-compose up -d &&
docker-compose run --rm laravel-docker-starter-server php artisan migrate &&
docker-compose run --rm laravel-docker-starter-server php artisan db:seed &&
docker run --rm -it -v $(pwd):/app -w /app node npm run dev
#docker-compose run --rm laravel-docker-starter-server php artisan db:seed --class=DevDatabaseSeeder
#docker-compose run --rm laravel-docker-starter-nginx apt-get install apache2-utils &&

echo "That's all folks!"
