#!/bin/bash
docker exec -it erddap-basic bash -c "cd webapps/erddap/WEB-INF/ && bash GenerateDatasetsXml.sh -verbose"