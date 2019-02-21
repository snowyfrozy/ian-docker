#!/bin/bash
#newman run postman.json -r json --reporter-json-export reports/newman-report.json
mysql -u user --host hostname -pPassword dbname < blub.sql

mkdir /data/reports
newman run postman.json -r json --reporter-json-export reports/newman-report.json

# Waiting and do not stop
tail -f /dev/null