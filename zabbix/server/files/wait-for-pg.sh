#!/bin/bash

set -e

HOST="$1"
USER="$2"
PASS="$3"

until PGPASSWORD="$PASS" psql -h "$HOST" -U "$USER" -c '\q' ; do
  >&2 echo "Postgres is unavailable - sleeping"
  sleep 1
done

>&2 echo "Postgres is up - executing command"
