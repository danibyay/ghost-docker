#!/bin/bash
set -e
host="$1"
shift
cmd="$@"
until mysql -hmysql -p"3306" -u"${ghost}" -p"${what3v3RRgh0zt}" 
-D"${ghost}" ; do
  >&2 echo "MySQL is unavailable - sleeping"
  sleep 1
done
>&2 echo "MySQL is up - executing command"
exec "$@"
