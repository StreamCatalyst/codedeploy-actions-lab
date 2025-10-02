#!/bin/bash
set -xe

# Download the WAR built by the CI job
aws s3 cp \
  s3://codedeploystack-webappdeploymentbucket-hkgdj6ywzzce/SpringBootHelloWorldExampleApplication.war \
  /usr/local/tomcat9/webapps/ROOT.war

# Ensure correct ownership
chown tomcat:tomcat /usr/local/tomcat9/webapps/ROOT.war
