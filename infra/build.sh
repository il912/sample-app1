#!/bin/bash -e
# build and tar /app (wp app)

echo "starting build..."

BUILDSTAMP=$(date +%Y%m%d-%H%M%S)

cd $repodir
zip -r ../builds/archive/build-$BUILDSTAMP.zip . * -x ".git*" -x ".DS_Store"
cd ../

echo "Tarball created"

# its very easy to point when we have static name of the file (latest)
cp builds/archive/build-$BUILDSTAMP.zip builds/latest.zip

echo "Build created: builds/archive/build-$BUILDSTAMP.zip and builds/latest.zip"
