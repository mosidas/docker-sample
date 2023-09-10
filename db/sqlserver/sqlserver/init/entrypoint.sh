#!/bin/bash
/docker-entrypoint-initdb.d/init.sh & /opt/mssql/bin/sqlservr
