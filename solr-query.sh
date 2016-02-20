#!/bin/sh
SERVER=solr.hostname.com

if [ $# -lt 1 ]; then
  echo "productid required"
  exit 1;
fi

echo "Check solr $SERVER"
curl -X GET "http://$SERVER:8983/solr/collection_name/select?q=productId%3A%22$1%22&wt=json&indent=true"