# ERDDAP basics

This repo will help you get started getting a dataset into ERDDAP using [Axiom's ERDDAP Docker image](https://github.com/axiom-data-science/docker-erddap). It includes a demonstration dataset. This repo is not meant to be used for deploying ERDDAP on a server, just for testing datasets locally on your own computer.

We will install using Docker, which installs ERDDAP into a 'container' on your computer, and avoids the need for you to install and configure all the components that ERDDAP relies on to work, such as Java, Apache, and Tomcat.

## Setup

- Install [docker](https://docs.docker.com/install/) and [docker-compose](https://docs.docker.com/compose/install/). Depending on your operating system, docker-compose may come with Docker
- `cd` into the directory of this git repo and run `docker-compose up -d`. This may take a while to run the first time as it needs to dowload the Docker images
- See if it works by going to <http://localhost:8070/erddap>

## Configuring

- put your data files (eg .nc or .csv files) into a new folder in the 'datasets' folder.

- Run `sh GenerateDatasetsXml.sh` in the terminal from this directory:
  - Use `EDDTableFromAsciiFiles` for .csv files and `EDDTableFromMultidimNcFiles` for netCDF (.nc) files.
  - 'Starting directory' is your new directory where your files are located, eg: `/datasets/sample-dataset` .The directory path must start with `/datasets` which is linked to the `datasets` folder in this directory.
  - Most of these questions can be left blank for now, just press enter to use default values

If this was successful, it will create a snippet which is output to `logs` folder. Paste that snipped into the file `config/datasets.xml`

- `datasets.xml` is where the datasets are configured. There are too many options to list here, see <https://coastwatch.pfeg.noaa.gov/erddap/download/setupDatasetsXml.html> for help. Once you have edited it to your liking, make note of the datasetID you are working on.

- To test your configuration, ERDDAP has a built in tool to debug your dataset, to use it run `sh DasDds.sh` and then type in your dataset ID when prompted.

After a change is made to a dataset, you can restart erddap with `docker-compose restart`

## Restarting

- Use `docker-compose restart`

## Stopping

`docker-compose down`

## Troubleshooting

- See <http://localhost:8070/erddap/status.html> for status
- See `logs/log.txt` for more information
- Test your dataset by running the debugging tool - `sh DasDds.sh` and entering the datasetID
