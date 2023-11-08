FROM ubuntu:latest AS Multistage
WORKDIR /app
RUN apt update -y
RUN apt install maven -y
COPY . .
RUN mvn clean package 

FROM alpine:latest
COPY --from=Multistage /app/target/hello-world-war-1.0.0.war /opt
