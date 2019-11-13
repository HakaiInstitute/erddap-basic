# ERDDAP basics

This repo will help you get started getting a dataset into ERDDAP. It includes a demonstration dataset.

## Setup

- Install [docker](https://docs.docker.com/install/) and [docker-compose](https://docs.docker.com/compose/install/)
- In this directory, run `docker-compose up`
- See if it works by going to http://localhost:8090/erddap

## Configuring
- put your data files (eg .nc or .csv files) into the 'datasets' folder

- `config/datasets.xml` is where the datasets are configured. There are too many options to list here, see https://coastwatch.pfeg.noaa.gov/erddap/download/setupDatasetsXml.html for help. Once you have edited it to your liking, make note of the datasetID you are working on.

 - Once you know your 'EDDType', use `sh GenerateDatasets.sh` and follow the menu to create a sample datasets.xml snippet which is output to bigParentDirectory/logs folder.
- To test your configuration, run `sh DasDds.sh` and then type in your dataset ID when prompted.

After a change is made to a dataset, you can either restart erddap with
`docker-compose restart`, or reload just that dataset by running
`sh reload_dataset <your-dataset-id-here>`:

## Restarting

- Use `docker-compose restart` for this. You _shouldn't_ need to use this for dataset changes but sometimes it helps.

## Stopping

`docker-compose down`

## Troubleshooting

- See http://localhost:8090/erddap/status.html for status
- See `bigParentDirectory/logs/log.txt` for more information
- Test your dataset with the `DasDds.sh` script
