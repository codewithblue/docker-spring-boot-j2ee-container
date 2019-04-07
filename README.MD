Docker Spring Boot J2EE Container

Sample project to prepare a Spring Boot application for traditional .war deployment inside a docker container.


A Dockerfile is provided for a Wildfly deployment. Customize it for a deployment in another container. In that case the `docker run` command below will probably change.

Generate the .war deployment artifact :
`mvn clean install`

Build a Docker image :
`docker build --tag spring-boot-wildfly .`

Run the Docker image :
`docker run -it -p 80:8080 spring-boot-wildfly`

Access your deployed application :
`curl -L http://$DOCKER_MACHINE_IP:80/webapp`
where $DOCKER_MACHINE_IP is the ip address of your docker machine instance.