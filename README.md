# Build with
docker build -t iandings .

# Run with volume
docker container run --name ian-test iandings:latest

# Connect to the bash
docker exec -it ian-test bash

mysql -u snowyfro_ian --host http://snowyfrozy.xyz --password Idefix89 snowyfro_ian < itforce.sql


#!/bin/bash
newman run postman.json -r json --reporter-json-export reports/newman-report.json