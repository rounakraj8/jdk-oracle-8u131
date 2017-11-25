FROM ubuntu:16.04

MAINTAINER Rounak Raj



RUN  curl -L -b "oraclelicense=a" http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.tar.gz | tar -xzC $BASE_HOME
	
RUN curl -sL http://www-eu.apache.org/dist/maven/maven-3/3.5.0/binaries/apache-maven-3.5.0-bin.tar.gz | tar -xzC $BASE_HOME

RUN	export MAVEN_HOME=$BASE_HOME/apache-maven-3.5.0

RUN	export JAVA_HOME=$BASE_HOME/jdk1.8.0_131

RUN	export PATH=$PATH:$JAVA_HOME/bin:$MAVEN_HOME/bin
