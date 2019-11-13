#!/usr/bin/env bash

docker exec -it erddap bash -c 'cd /usr/local/tomcat/webapps/erddap/WEB-INF; sh GenerateDatasetsXml.sh'
