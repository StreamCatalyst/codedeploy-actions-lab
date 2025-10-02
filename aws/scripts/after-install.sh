#!/bin/bash
set -xe

# Download the WAR built by the CI job
aws s3 cp \
  s3://codedeploystack-webappdeploymentbucket-c95brnwz9iro/SpringBootHelloWorldExampleApplication.war \
  /usr/local/tomcat9/webapps/ROOT.war

# Ensure correct ownership
chown tomcat:tomcat /usr/local/tomcat9/webapps/ROOT.war
