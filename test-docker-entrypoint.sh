#!/bin/sh

set -e 

echo "Enviroment: $RAILS_ENV"

bundle check || bundle install

bundle exec ${@}