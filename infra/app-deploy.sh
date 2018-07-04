#!/bin/bash

# Any subsequent(*) commands which fail will cause the shell script to exit immediately
set -e

# change to project root

echo "Working Directory: `pwd`"

gitusername=il912
export commitId=`git rev-parse HEAD`
export reponame=`basename -s .git \`git config --get remote.origin.url\``
export repopath=`pwd`
export repodir=`basename \`pwd\``

cd "../"

echo "build.sh starts here"
$repopath/infra/build.sh
echo "build.sh ends here"

echo "upload.sh starts here"
$repopath/infra/upload.sh
echo "upload.sh ends here"

echo "deploy.sh starts here"
$repopath/infra/deploy.sh
echo "deploy.sh ends here"
