#!/usr/bin/env bash

docker exec -it erddap-basic bash -c 'cd /usr/local/tomcat/webapps/erddap/WEB-INF; sh GenerateDatasetsXml.sh'
