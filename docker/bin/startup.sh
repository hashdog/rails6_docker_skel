#! /bin/sh

echo "== Removing potential server.pid file..."
 rm -rf  tmp/pids/server.pid
echo "== Running migrations..."
./docker/bin/prepare-db.sh
echo "== Running server..."
rails s -b 0.0.0.0

