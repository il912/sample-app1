#!/bin/bash -e
# build and tar /app (wp app)

echo "starting s3 task..."

# remove earlier build from s3
aws s3 rm s3://akaushal-s3/deploy/latest.zip
echo "Deleted earlier build"

# upload latest build to s3
aws s3 cp builds/latest.zip s3://akaushal-s3/deploy/latest.zip

echo "upload complete"
