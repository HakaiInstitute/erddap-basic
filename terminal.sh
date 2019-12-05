#!/bin/bash
# This will put you in a command line in erddap's docker container
docker exec -it erddap-basic bash -c 'cd /usr/local/tomcat/webapps/erddap/WEB-INF; exec "${SHELL:-sh}"'
