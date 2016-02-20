#!/bin/sh
# This script allows one to connect to a postgresql server and make some queries. Have to provide two input parameters.
# Put connection details inside .pgpass psqlserver.hostname.com:5432:schema_name:postgres:postgres
# To execute:
# ./psql-query.sh productid version
SQLSERVER=psqlserver.hostname.com

if [ $# -lt 2 ]; then
  echo "productid version required"
  exit 1;
fi
VERSION=$2

echo "media"
psql --pset pager=off -U postgres -h $SQLSERVER schema_name -c "select resolution, name, type, link, product_id, reference_id, version from media where product_id = '$1' and resolution = '1920x1200' and version = '$VERSION' order by name"
