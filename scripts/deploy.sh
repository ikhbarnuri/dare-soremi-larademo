#!/usr/bin/env bash

# CD into the code directory
cd /var/www/dare-soremi-larademo

# enter a maintenance mode
php artisan down

# get the latest code
git pull

# install the app's dependencies
composer install --no-dev

# migrate the database
php artisan migrate --force

# cache the app's config for speed boosting
php artisan config:cache

# run other necessary commands for your specific application
# ex
# php artisan queue:work

# compile js assets
npm run build

# exit maintenance mode
php artisan up