#!/bin/#!/usr/bin/env bash
if [ $1 ]
then
  echo "Reloading $1..."
  touch bigParentDirectory/hardFlag/$1
else
  echo "Set a hard flag to reload a dataset.\nUseage: sh reload_dataset.sh myDatasetID123"
fi
