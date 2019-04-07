FROM jboss/wildfly:latest
ADD webapp.war  /opt/jboss/wildfly/standalone/deployments/