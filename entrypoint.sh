#!/bin/bash

set -e

bundle check || bundle install


rm -f /vehiculos/tmp/pids/server.pid

bundle exec ${@}