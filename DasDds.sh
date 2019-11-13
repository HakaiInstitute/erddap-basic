#!/bin/bash

# This file runs the 'DasDs.sh' program in erddap which tests a dataset
# It will prompt you for a dataaset ID

docker exec -it erddap bash -c 'cd /usr/local/tomcat/webapps/erddap/WEB-INF; sh DasDds.sh'
