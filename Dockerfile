# Pull base image.
FROM ubuntu:latest
RUN \
# Update
apt-get update -y && \
# Install Java
apt-get install default-jre -y
# Copy jar file in container
COPY target/hello-dropwizard-3.0.jar /opt/hello-dropwizard-3.0.jar
#Copy example.yaml file in container
COPY example.yaml /opt/example.yaml
#expose port 8080 to access application
EXPOSE 8080
#Set Work Directory as /opt
WORKDIR /opt
#Start the applicatin
CMD java -jar hello-dropwizard-3.0.jar server example.yaml

