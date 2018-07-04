#!/bin/bash -e
# build and tar /app (wp app)

# aws deploy create-deployment \
#     --application-name CodeDeployApp \
#     --github-location repository=il912/sample-app1,commitId=1646dfc8d36ac668c6a527b91e9db017c69ca70e \
#     --deployment-group-name StageDeploy \
#     --deployment-config-name CodeDeployDefault.AllAtOnce \
#     --description Test3

DEP_ID=$(aws deploy create-deployment \
    --application-name CodeDeployApp \
    --s3-location bucket=akaushal-s3,key=deploy/latest.zip,bundleType=zip \
    --deployment-group-name StageGroup \
    --deployment-config-name CodeDeployDefault.OneAtATime \
    --description Test3)
echo "DeploymentId = $DEP_ID"
echo "Follow progress at"
echo https://us-east-2.console.aws.amazon.com/codedeploy/home?region=us-east-2#/deployments/$DEP_ID
