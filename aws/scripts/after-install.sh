#!/bin/bash
set -xe 
# it will print each command before executing it (-x) and exit on any error (-e). 


# Copy war file from S3 bucket to tomcat webapp folder
aws s3 cp s3://code-deploy-stack-webappdeploymentbucket-ugifuwgp7hea/SpringBootHelloWorldExampleApplication.war /usr/local/tomcat9/webapps/SpringBootHelloWorldExampleApplication.war


# Ensure the ownership permissions are correct.
chown -R tomcat:tomcat /usr/local/tomcat9/webapps