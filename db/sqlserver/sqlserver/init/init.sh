#!/bin/bash
wait_time=30s

# wait for SQL Server to come up
echo importing data will start in $wait_time ...
sleep $wait_time
echo importing data...

# run the setup script to create the DB and the schema in the DB if it doesn't exist
if [ `ls -U1 /var/opt/mssql/data | grep $DB_NAME | wc -l` -eq 0 ]; then
    echo "Creating database $DB_NAME"
    /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P "$SA_PASSWORD" -i init.sql
fi

echo finished importing data

