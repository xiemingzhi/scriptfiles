#!/bin/sh
CASSANDRA_HOME=/opt/apache-cassandra-2.0.14
USERNAME=sampleuser
PASSWORD=samplepass

$CASSANDRA_HOME/bin/cqlsh -u $USERNAME -p $PASSWORD -e "use schema_name;select count(*) from table_name" 