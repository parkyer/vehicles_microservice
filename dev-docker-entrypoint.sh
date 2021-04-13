#!/bin/sh

set -e

echo "Enviroment: $RAILS_ENV"

#check bundle 
bundle check || bundle install

#remove pid from previous 

rm -f $APP_PATH/tmp/pids/server.pid

# run anything by prepending bundle exec 

bundle exec ${@}