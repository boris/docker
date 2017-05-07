#!/bin/bash
set -e

APP_ROOT='/home/deploy/app'
cd $APP_ROOT
bundle install --path vendor/bundle
cd ..
RAILS_ENV=production unicorn -c /home/deploy/app/config/unicorn.rb
