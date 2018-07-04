#!/bin/bash -e
# build and tar /app (wp app)

echo "starting build..."

# Clean
rm -rf builds/current

BUILDSTAMP=$(date +%Y%m%d-%H%M%S)
tar -czf builds/archive/build-$BUILDSTAMP.tgz webroot/
echo "Tarball created"

# its very easy to point when we have static name of the file (latest)
cp builds/archive/build-$BUILDSTAMP.tgz builds/latest.tgz

echo "Build created: builds/archive/build-$BUILDSTAMP.tgz and builds/latest.tgz"
