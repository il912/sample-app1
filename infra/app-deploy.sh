#!/bin/bash

# Any subsequent(*) commands which fail will cause the shell script to exit immediately
set -e

# change to project root
cd "../"

echo "Directory Changed to `pwd`"

echo "build.sh starts here"
infra/build.sh
echo "build.sh ends here"

echo "upload.sh starts here"
infra/upload.sh
echo "upload.sh ends here"

echo "deploy.sh starts here"
infra/deploy.sh
echo "deploy.sh ends here"
