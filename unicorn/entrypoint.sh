#!/bin/bash
set -e

APP_ROOT='/home/deploy/app'
BUNDLE=`bundle install --path vendor/bundle`
cd $APP_ROOT
$BUNDLE
cd ..
unicorn -c config/unicorn.rb
