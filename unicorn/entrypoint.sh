#!/bin/bash
set -e

APP_ROOT='/home/deploy/app'
BUNDLE=`bundle install --path vendor/bundle`
cd $APP_ROOT
$BUNDLE
cd ..
RAILS_ENV=production unicorn -c /home/deployapp/config/unicorn.rb
